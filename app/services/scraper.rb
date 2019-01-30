class Scraper

require 'nokogiri'
require 'open-uri'

  def initialize
    @array = []
    url = Nokogiri::HTML(open("https://www.ecb.europa.eu/stats/policy_and_exchange_rates/euro_reference_exchange_rates/html/index.en.html"))
      url.css('tbody>tr').each do |row|
        hash = {}
        hash['Short'] = row.css('.currency').text
        hash['Country'] = row.css('.alignLeft').text.split(/ |\_|\-/).map(&:capitalize).join(" ")
        hash['Rate'] = row.css('.rate').text
        @array << hash
      end
  end


  def save
    @array.each do |currency|
      Currency.create(short: currency["Short"], country: currency["Country"], rate: currency["Rate"])
    end
  end

end
