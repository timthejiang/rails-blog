require 'test_helper'

class Welcome::ChildControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
