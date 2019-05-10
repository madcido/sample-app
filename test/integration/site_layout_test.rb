require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout_links" do
    get root_path
    assert_template "static_pages/home"
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", about_path
  end

  test "layout links logged in" do
    @user = users(:archer)
    log_in_as @user
    get user_path(@user)
    assert_template "users/show"
    assert_select "a[href=?]", users_path
    assert_select "a[href=?]", user_path(@user)
    assert_select "a[href=?]", edit_user_path(@user)
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", login_path, count: 0
  end

  test "layout links logged out" do
    get root_path
    assert_select "a[href=?]", logout_path, count: 0
    assert_select "a[href=?]", login_path
  end

end
