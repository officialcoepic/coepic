require 'test_helper'

class PdfDownloadsControllerTest < ActionController::TestCase
  setup do
    @pdf_download = pdf_downloads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pdf_downloads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pdf_download" do
    assert_difference('PdfDownload.count') do
      post :create, pdf_download: { noofclick: @pdf_download.noofclick }
    end

    assert_redirected_to pdf_download_path(assigns(:pdf_download))
  end

  test "should show pdf_download" do
    get :show, id: @pdf_download
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pdf_download
    assert_response :success
  end

  test "should update pdf_download" do
    put :update, id: @pdf_download, pdf_download: { noofclick: @pdf_download.noofclick }
    assert_redirected_to pdf_download_path(assigns(:pdf_download))
  end

  test "should destroy pdf_download" do
    assert_difference('PdfDownload.count', -1) do
      delete :destroy, id: @pdf_download
    end

    assert_redirected_to pdf_downloads_path
  end
end
