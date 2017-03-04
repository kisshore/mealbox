require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get preference_update" do
    get :preference_update
    assert_response :success
  end

end
