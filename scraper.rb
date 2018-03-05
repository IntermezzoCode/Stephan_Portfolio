require "open-uri"
require "nokogiri"
require "csv"

def scraper

  url = "https://berlin.startups-list.com/"
  companies = []
  attributes = {}

  doc = Nokogiri::HTML(open(url))

  # doc.css('.card h1').each do |element|
  #   p element.text.strip
  #   p element.attribute('data-href').value
  # end

 #  doc.css('.card').each do |element|
 #    # p element.text.strip
 #    p element.attribute('data-href').value
 #  end

 doc.css('.fa-facebook-square:parent').each do |element|
    p element
    p element.attribute('data-href').value
  end



end

scraper
