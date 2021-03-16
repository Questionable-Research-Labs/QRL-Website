class Jekyll::Converters::Markdown::CustomMarkdown
  def initialize(config)
    require "kramdown"
    @config = config
  rescue LoadError
    STDERR.puts "You are missing a library required for Markdown. Please run:"
    STDERR.puts "  $ [sudo] gem install kramdown"
    raise FatalException.new("Missing dependency: kramdown")
  end

  def findLinks(html)
    # !\[[^\]]*\]\((?<filename>.*?)(?=\"|\))(?<optionalpart>\".*\")?\)
    matches = html.match(/(\d+)/)
    if matches 
      puts matches.length
    end
  end

  def convert(content)
    puts "Starting Markdown Conversion"
    html = Kramdown::Document.new(content).to_html
    findLinks(html)
    puts "Done."
    return html
  end
end
