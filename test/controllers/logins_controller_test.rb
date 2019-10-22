require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get logins_home_url
    assert_response :success
  end

  test "should get secret" do
    get logins_secret_url
    assert_response :success
  end

end
