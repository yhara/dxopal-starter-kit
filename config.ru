require 'rack'
require 'rack/directory'
run Rack::Directory.new(__dir__)
