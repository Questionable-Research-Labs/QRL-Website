class Jekyll::Converters::Markdown::CustomMarkdown
  def initialize(config)
    require "kramdown"
    @config = config
  rescue LoadError
    STDERR.puts "You are missing a library required for Markdown. Please run:"
    STDERR.puts "  $ [sudo] gem install kramdown"
    raise FatalException.new("Missing dependency: kramdown")
  end

  def convert(content)
    html = Kramdown::Document.new(content).to_html
    html_with_target_none = html.gsub(/<a/,"<a target='_blank' rel='noopener'")
    html_with_target_none = html_with_target_none.gsub(/— (.+) —/,'<h6 class="horizontal-rule-header"><span>\1</span></h5>')
  end
end
