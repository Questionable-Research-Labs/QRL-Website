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
    Kramdown::Document.new(content).to_html
  end
end
