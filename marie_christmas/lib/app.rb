require 'nokogiri'
require 'open-uri'
require 'pry'

def get_townhall_email
	#(townhall_url)

	page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))

	array_name = []
	array_price = []

#//*[@id="id-bitcoin"]/td[2]/a "ceci est le XPath, et mon code ne marche pas avec lui"
	array_1 = page.xpath('/html/body/div/main/section[1]/div/div/div/h1')
	  array_1.each do |get_name|
	  	 array_name << get_name.text
	end

#//*[@id="id-bitcoin"]/td[3]/a "ceci est le XPath, et mon code ne marche pas avec lu"
	array_2 = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
	  array_2.each do |get_email|
		 array_price << get_email.text
	end
	
 zipped_array = array_name.zip(array_price)
 array_of_hashes = []
 zipped_array.each do |element|
 array_of_hashes << {element[0] => element[1]}
end

 puts array_of_hashes
 return array_of_hashes

end

get_townhall_email
#(townhall_url)