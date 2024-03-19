require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
	test "should get index" do
		get mcas_index_url
		assert_response :success
	end
end