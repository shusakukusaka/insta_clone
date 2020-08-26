require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Insta Clone App"
    assert_equal full_title("Help"), "Help | Insta Clone App"
  end
end