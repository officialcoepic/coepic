require 'test_helper'

class AuthorImagesControllerTest < ActionController::TestCase
  setup do
    @author_image = author_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:author_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create author_image" do
    assert_difference('AuthorImage.count') do
      post :create, author_image: { imageurl: @author_image.imageurl }
    end

    assert_redirected_to author_image_path(assigns(:author_image))
  end

  test "should show author_image" do
    get :show, id: @author_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @author_image
    assert_response :success
  end

  test "should update author_image" do
    put :update, id: @author_image, author_image: { imageurl: @author_image.imageurl }
    assert_redirected_to author_image_path(assigns(:author_image))
  end

  test "should destroy author_image" do
    assert_difference('AuthorImage.count', -1) do
      delete :destroy, id: @author_image
    end

    assert_redirected_to author_images_path
  end
end
