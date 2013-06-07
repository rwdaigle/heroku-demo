$stdout.sync = $stderr.sync = true

# require "rack/ssl-enforcer"
require "./web"

# use Rack::SslEnforcer if ENV['ENFORCE_SSL'] == 'true'
use Rack::Static, :root => File.join(Dir.pwd, "public"), :urls => ["/assets"]
run Sinatra::Application
