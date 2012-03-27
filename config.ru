#\ -p 3000 -E development -d

#require 'rack/debug'
#use Rack::Debug


if ENV['RACK_ENV'] == "development"
	use Rack::Lint
	use Rack::ShowExceptions
end

require 'redirector'
require 'redirector/file_redirector'

#run Proc.new {|env| [200, {"Content-Type" => "text/html"}, ["Hello Rack!"]]}
run Redirector::URIRedirector.new(nil,:handler => Redirector::FileRedirector.new(File.dirname(__FILE__) + "/../uri_redirects.csv" ))
