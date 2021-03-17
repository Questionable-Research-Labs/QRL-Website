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
    # !\[[^\]]*\]\((?<filename>.*?)(?=\"|\))(?<optionalpart>\".*\")?\)]
    stringScan = StringScanner.new(html)
    match = stringScan.scan(/!\[[^\]]*\]\((?<filename>.*?)(?=\"|\))?\)/)
    while not stringScan.eos? || match.nil?
      put "Checking"
      if match
        puts match.methods
      end
      match = stringScan.scan(/!\[[^\]]*\]\((?<filename>.*?)(?=\"|\))?\)/)
      
    end
    
    
    return html
  end

  def convert(content)
    puts "Adding cache busting to images"
    html = findLinks(content) 
    
    puts "Done."
    return Kramdown::Document.new(html).to_html
  end
end
