require 'test_helper'

class BControllerTest < ActionController::TestCase
  test "should get b1" do
    get :b1
    assert_response :success
  end

end
