require 'faraday'

class Image
  def self.download(url)
    response = Faraday.get(url)
    conn = response.headers['content-type']
    raise ArgumentError if response.status.to_s =~ /^4|5/
    raise TypeError if conn.split('/').first != 'image'
    File.open("image.#{conn.split('/').last}", "w") { |f| f.write response.body }
  end
end
Image.download('https://www.hello.com/img_/hello_logo_hero.png')
Image.download('http://apikabu.ru/img_n/2012-04_4/zky.jpg')
