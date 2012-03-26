module Redirector
  class URIRedirector
    def initialize(app = nil, options = {})
      if options[:handler] and options[:handler].respond_to?(:redirect_uri)
        @handler = options[:handler]
      else
        @handler = FileRedirector.new
				#raise ArgumentError, "URIRedirector needs a :handler => class, that responds to method [redirect_uri]."
      end
      @app = app
    end

    def call(env)
      @env = env
      request = Rack::Request.new(env)
      redirect = @handler.redirect_uri(request.fullpath)
      if redirect.nil?
        @app.call env
      else
        [301, {"Content-Type" => "text/plain", "Location" => redirect}, ["Redirecting..."]]
      end
    end
  end

end
