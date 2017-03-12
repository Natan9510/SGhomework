class Link < Document
  def parse
    super
    links = @doc.css('a')
    hrefs = links.map {|link| link.attribute('href').to_s}.uniq.sort.delete_if {|href| href.empty?}
    puts hrefs
  end
end
