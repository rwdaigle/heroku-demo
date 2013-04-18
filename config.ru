$stdout.sync = $stderr.sync = true

require "./web"
use Rack::Static, :root => File.join(Dir.pwd, "public"), :urls => ["/assets"]
run Sinatra::Application
