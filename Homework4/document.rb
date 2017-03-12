# require 'nokogiri'
# require 'open-uri'

class Document
  @doc
  def parse
    @doc = Nokogiri::HTML(open('http://www.nokogiri.org/tutorials/installing_nokogiri.html'))
  end
end
