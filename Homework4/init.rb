require 'nokogiri'
require 'open-uri'
require_relative 'document'
require_relative 'header'
require_relative 'link'

header = Header.new
puts header.parse

link = Link.new
puts link.parse
