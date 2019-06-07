require 'mechanize'
require 'json'
require 'csv'


# need to output into csv
class Scraper
    agent = Mechanize.new
    page = 'http://52.19.27.200/fraud-map/?ps='
    postcode = 'NW61PJ'
    page += postcode
    page = agent.get(page)
    body = JSON.parse(page.body)
    body = body["data"]
    data = {
            :first_party_fraud => body["postcode_sector"],
            :third_party_fraud => body["third_party_fraud"],
            :consumer_spending => body["real_consumer_spending"],
            :unemployment_rate => body["unemployment_rate"],
            :population => body["population"]
            }
end

Scraper





