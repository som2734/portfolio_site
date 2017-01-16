require 'test_helper'

class CvControllerTest < ActionController::TestCase
  test "should get resume" do
    get :resume
    assert_response :success
  end

end
