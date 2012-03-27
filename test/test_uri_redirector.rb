require 'minitest/autorun'
require 'csv'
require 'uri'
require 'redirector'

class TestURIRedirector < MiniTest::Unit::TestCase

	#output = STDOUT

	def setup
		#@meme = Meme.new
	end

	def test_initialize
		# initialize needs to have a valid handler
		assert_raises ArgumentError do
			Redirector::URIRedirector.new(nil)
		end
		
		handler_mock = MiniTest::Mock.new.expect(:redirect_uri, nil)

	end

=begin
	def test_this_works
		file = "/home/david/Dropbox/current_work/uri_redirects.csv"
		arr_of_arrs = CSV.read(file)
		hash = Hash[arr_of_arrs]
		assert File.exist?(file)
		puts "HASH = #{hash}"
		assert_equal 1,1
	end
=end

end
