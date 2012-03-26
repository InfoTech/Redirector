module Redirector
	class FileRedirector

		def initialize(file_path = "")
			@redirect_hash ||= {"/dave" => "/test"} #load_redirects_from_file
		end

		def redirect_uri string
			@redirect_hash[string]
		end

		private
		
		def load_redirects_from_file
			#TODO impliment	
		end

	end
end
