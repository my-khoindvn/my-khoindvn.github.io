require 'uri'
require 'net/http'
require 'openssl'
require 'json'

url = URI("https://api.short.io/domains/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["accept"] = 'application/json'
request["content-type"] = 'application/json'
request["authorization"] = 'APIKEY'
request.body = JSON.generate({"hideReferer":false,"httpsLinks":false,"hostname":"yourshortdomain.com","linkType":"random"})

response = http.request(request)
puts response.read_body
