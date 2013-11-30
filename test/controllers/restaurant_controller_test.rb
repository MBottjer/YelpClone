require 'test_helper'

class RestaurantControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
