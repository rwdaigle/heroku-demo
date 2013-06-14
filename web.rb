require "sinatra"
require "rest-client"
require "json"

get "/" do
  content_type "text/html"
  File.read("public/index.html")
end

get "/location" do
  # ip = RestClient.get("http://ipecho.net/plain")
  ip = RestClient.get("http://bot.whatismyipaddress.com/")
  location = RestClient.get("http://freegeoip.net/json/#{ip}")
  content_type "application/json"
  location
end
