require "sinatra"

get "/" do
  content_type "text/html"
  File.read("public/index.html")
end
