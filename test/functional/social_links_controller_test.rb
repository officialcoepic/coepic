require 'test_helper'

class SocialLinksControllerTest < ActionController::TestCase
  setup do
    @social_link = social_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_link" do
    assert_difference('SocialLink.count') do
      post :create, social_link: { facebook: @social_link.facebook, other: @social_link.other, twitter: @social_link.twitter, wordpress: @social_link.wordpress }
    end

    assert_redirected_to social_link_path(assigns(:social_link))
  end

  test "should show social_link" do
    get :show, id: @social_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @social_link
    assert_response :success
  end

  test "should update social_link" do
    put :update, id: @social_link, social_link: { facebook: @social_link.facebook, other: @social_link.other, twitter: @social_link.twitter, wordpress: @social_link.wordpress }
    assert_redirected_to social_link_path(assigns(:social_link))
  end

  test "should destroy social_link" do
    assert_difference('SocialLink.count', -1) do
      delete :destroy, id: @social_link
    end

    assert_redirected_to social_links_path
  end
end
