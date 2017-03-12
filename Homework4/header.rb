class Header < Document
  def parse
    super
    headers = @doc.css('h2')
    puts headers
  end
end
# header = Header.new
# puts header.parse
