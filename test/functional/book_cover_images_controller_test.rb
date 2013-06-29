require 'test_helper'

class BookCoverImagesControllerTest < ActionController::TestCase
  setup do
    @book_cover_image = book_cover_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_cover_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_cover_image" do
    assert_difference('BookCoverImage.count') do
      post :create, book_cover_image: { bookurl: @book_cover_image.bookurl }
    end

    assert_redirected_to book_cover_image_path(assigns(:book_cover_image))
  end

  test "should show book_cover_image" do
    get :show, id: @book_cover_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_cover_image
    assert_response :success
  end

  test "should update book_cover_image" do
    put :update, id: @book_cover_image, book_cover_image: { bookurl: @book_cover_image.bookurl }
    assert_redirected_to book_cover_image_path(assigns(:book_cover_image))
  end

  test "should destroy book_cover_image" do
    assert_difference('BookCoverImage.count', -1) do
      delete :destroy, id: @book_cover_image
    end

    assert_redirected_to book_cover_images_path
  end
end
