require 'csv'

module Redirector
	class FileRedirector

		def initialize(file_path = "/home/rails/Desktop/retired_internal_links.csv")
			@redirect_hash ||= load_redirects_from_file(file_path)
		end

		def redirect_uri string
			@redirect_hash[string]
		end

		private
		
		def load_redirects_from_file(file_path)
			#TODO impliment	
			redirect_array = CSV.read(file_path)
			puts "here #{redirect_array}"
			@redirect_hash = Hash[redirect_array]
			puts "here #{@redirect_hash}"
		end
	end
end
