# Run from any directory: ruby tests/check_package.rb
# Checks packaging, not literary quality or long-term agent behavior.
require 'yaml'
require 'pathname'

root = Pathname.new(__dir__).parent
skill = root.join('human-writing')
entry = skill.join('SKILL.md').read
frontmatter = entry.match(/\A---\n(.*?)\n---\n/m)
abort 'Missing SKILL.md frontmatter' unless frontmatter
metadata = YAML.safe_load(frontmatter[1])
abort 'Invalid skill name' unless metadata['name'] == skill.basename.to_s
abort 'Invalid description' unless metadata['description'].is_a?(String) && metadata['description'].length.between?(1, 1024)
abort 'Unknown frontmatter fields' unless (metadata.keys - %w[name description license allowed-tools metadata]).empty?

ui = YAML.safe_load(skill.join('agents/openai.yaml').read).fetch('interface')
abort 'Invalid UI description length' unless ui.fetch('short_description').length.between?(25, 64)
abort 'Prompt does not invoke skill' unless ui.fetch('default_prompt').include?("$#{metadata['name']}")

Dir[skill.join('**/*.md').to_s].each do |filename|
  text = File.read(filename)
  text.scan(/`(references\/[^`]+\.md)`/).flatten.each do |reference|
    abort "Missing reference: #{reference} in #{filename}" unless skill.join(reference).file?
  end
end

# Local Markdown links must resolve; external URLs and heading anchors are not fetched.
([root.join('README.md')] + Dir[skill.join('**/*.md').to_s].map { |f| Pathname.new(f) }).each do |file|
  file.read.scan(/\]\(([^\s)]+)\)/).flatten.each do |target|
    next if target.start_with?('#') || target.match?(/\A[a-z][a-z0-9+.-]*:/i)
    path = target.split('#', 2).first
    abort "Broken local link #{target} in #{file}" unless file.parent.join(path).exist?
  end
end

lite = skill.join('dist/human-writing-lite.md').read
abort 'Lite must not require external reference files' if lite.match?(/`references\/[^`]+\.md`/)
# The standalone distribution must carry the same registry protocol.
workspace = skill.join('references/workspace.md').read
registry_heading = '## 本机地址簿：新会话先找路'
registry = workspace.split(registry_heading, 2).fetch(1).split('## 首次引导与根目录授权', 2).first
lite_registry = lite.split(registry_heading, 2).fetch(1).split('## 创作目录托管', 2).first
abort 'Registry protocol differs between full and lite' unless registry == lite_registry
puts 'PASS: skill metadata, UI metadata, reference paths, local links, standalone lite packaging, identical registry protocol'
