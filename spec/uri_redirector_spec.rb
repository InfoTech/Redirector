require 'minitest/autorun'
require 'redirector'
require 'redirector/file_redirector'

describe "Load hash" do
	before do
	  #@file_path = "/home/rails/Desktop/spec.csv"
	end

	describe Redirector::FileRedirector do
		it "#redirect_uri should load values" do
=begin
			where = Redirector::FileRedirector.new(@file_path).redirect_uri("john")
		  puts "here #{where}"
		  where.must_equal("frank")
=end
		end
	end
end
