require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get pryvacy_policy" do
    get static_pages_pryvacy_policy_url
    assert_response :success
  end

end
