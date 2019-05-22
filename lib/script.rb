require 'mechanize'

class Scraper
    agent = Mechanize.new
    page = agent.get('https://www.experian.co.uk/identity-and-fraud/fraudmap/')
    page_form = page.forms[0]
    # page_form[0] = 'ps'
    postcode_field = page_form.fields[0]
    postcode_field.value = 'NW61PJ'
    page2 = page_form.submit
    puts page2.uri
end

Scraper


