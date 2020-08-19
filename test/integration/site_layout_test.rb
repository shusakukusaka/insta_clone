require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", pryvacy_policy_path
    assert_select "a[href=?]", new_user_session_path
    assert_select "a[href=?]", user_facebook_omniauth_authorize_path
  end
end
