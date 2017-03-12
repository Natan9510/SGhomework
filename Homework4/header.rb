class Header < Document
  def parse
    super
    headers = @doc.css('h2')
    puts headers
  end
end
