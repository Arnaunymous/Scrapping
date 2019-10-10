require 'nokogiri'
require 'open-uri'
require 'pry'


def get_townhall_urls
	
	page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))

	array_cities_name = []

	array_3 = page.xpath('//*[@id="voyance-par-telephone"]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/a[1]')
	  array_3.each do |get_url|
	  	 array_cities_name << get_url.text
	end

	array_cities_name.each do |element|
		puts array_cities_name
	end

end
get_townhall_urls
#(townhall_url)