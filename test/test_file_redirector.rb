require 'minitest/autorun'
require 'csv'
require 'uri'
require 'redirector'

class TestFileRedirector < MiniTest::Unit::TestCase
	
	#output = STDOUT
	
	def setup

	end

	def test_initialize
		# initialize needs a valid file path
		assert_raises ArgumentError do
			Redirector::FileRedirector.new("nofile")
		end

	end

end
