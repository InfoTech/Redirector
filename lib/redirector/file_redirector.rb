require 'csv'

module Redirector
	class FileRedirector

		def initialize(file_path)
			raise ArgumentError unless File.exists?(file_path)
			@redirect_hash ||= load_redirects_from_file(file_path)
		end

		def redirect_uri string
			#TODO only return a value if it looks valid
			@redirect_hash[string]
		end

		private
		
		def load_redirects_from_file(file_path)
			return false if File.exist?(file_path) == false
			arr_of_arrs = CSV.read(file_path)
			@redirect_hash = Hash[arr_of_arrs]
		end
	end
end
