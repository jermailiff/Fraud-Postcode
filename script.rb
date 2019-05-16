require 'httparty'

response = httparty.get('https://www.experian.co.uk/identity-and-fraud/fraudmap/')

print response.code
print response.body



