require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get pryvacy_policy" do
    get pryvacy_policy_path
    assert_response :success
  end

end
