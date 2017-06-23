require 'redirector'
require 'redirector/file_redirector'

describe "Load hash" do
	before do
	  @file_path = File.expand_path('../uri_redirects.csv', __FILE__)
	end

	describe Redirector::FileRedirector do
		it "#redirect_uri should load values" do
			where = Redirector::FileRedirector.new(@file_path).redirect_uri("/midwest")
		  	where.should == "http://solutions.infotech.com/MidwestHomePage.html"
		end
	end
end
