require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", pryvacy_policy_path
    assert_select "a[href=?]", new_user_session_path
    assert_select "a[href=?]", user_facebook_omniauth_authorize_path
    assert_select "a[href=?]", new_user_registration_path
    get pryvacy_policy_path
    assert_select "title", full_title("pryvacy policy")
  end
end
