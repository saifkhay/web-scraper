require 'open-uri'
require 'nokogiri'

url = 
page = Nokogiri::HTML(open(url))

page.css('td[style="text-align:left;"]').each do |line|
	put line.text
end

