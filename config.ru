$stdout.sync = $stderr.sync = true

require "rack/ssl-enforcer"
require "./web"

use Rack::SslEnforcer
use Rack::Static, :root => File.join(Dir.pwd, "public"), :urls => ["/assets"]
run Sinatra::Application
