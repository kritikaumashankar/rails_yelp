require 'test_helper'

class RestuarantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restuarants_index_url
    assert_response :success
  end

  test "should get show" do
    get restuarants_show_url
    assert_response :success
  end

  test "should get new" do
    get restuarants_new_url
    assert_response :success
  end

end
