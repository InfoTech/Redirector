module Redirector
  class URIRedirector
    def initialize(app = nil, options = {})
      if options[:handler] and options[:handler].respond_to?(:redirect_uri)
        @handler = options[:handler]
      else
        raise "URIRedirector needs a :handler => class, that responds to :redirect_uri."
      end
      puts options
      @app = app
      puts @app
    end

    def call(env)
      puts env

      request = Rack::Request.new(env)
      @env = env
      
      redirect = @handler.redirect_uri(request.fullpath)
      if redirect.nil?
        @app.call env
      else
        [301, {"Content-Type" => "text/plain", "Location" => redirect}, ["Redirecting..."]]
      end
    end

		private


  end


end
