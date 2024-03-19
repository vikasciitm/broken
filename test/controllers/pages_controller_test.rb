require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get about_us" do
    get pages_about_us_url
    assert_response :success
    assert_select "title", "About"
  end

  test "should get students" do
    get pages_students_url
    assert_response :success
    assert_select "title", "Students" 
  end
end
