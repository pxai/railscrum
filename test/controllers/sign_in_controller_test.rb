require 'test_helper'

class SignInControllerTest < ActionDispatch::IntegrationTest
  test "should get signin" do
    get sign_in_signin_url
    assert_response :success
  end

end
