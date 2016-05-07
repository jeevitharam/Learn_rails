require 'test_helper'

class AControllerTest < ActionController::TestCase
  test "should get a1" do
    get :a1
    assert_response :success
  end

end
