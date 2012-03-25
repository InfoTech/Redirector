require 'minitest/autorun'
require 'dalli'

describe String do
	before do
	end

	describe "something" do
		it "must response" do
			"dave".must_equal "dave"
		end
		it "memcache" do
			dc = Dalli::Client.new(['localhost:11211'], :namespace => "uri_redirector")
			#dc.get("dave").must_equal 123
			TCPSocket.new('localhost', 11211).wont_be_nil
		end

	end
end
