require 'minitest/autorun'
require 'csv'

class TestMeme < MiniTest::Unit::TestCase

	def setup
		#@meme = Meme.new
	end
require 'uri'

	def test_this_works
		puts "WHAT= #{URI::regexp}"	
		assert ("w/d*!& ave&" =~ URI::regexp).nil?, false

		file = "/home/david/Dropbox/current_work/uri_redirects.csv"
		arr_of_arrs = CSV.read(file)
		hash = Hash[arr_of_arrs]
		assert File.exist?(file)
		puts "HASH = #{hash}"
		assert_equal 1,1
	end
	
end
