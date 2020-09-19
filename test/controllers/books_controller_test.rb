require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get HomePage" do
    get books_HomePage_url
    assert_response :success
  end

  test "should get AddBook" do
    get books_AddBook_url
    assert_response :success
  end

  test "should get UpdateBook" do
    get books_UpdateBook_url
    assert_response :success
  end

  test "should get Details" do
    get books_Details_url
    assert_response :success
  end

  test "should get Delete" do
    get books_Delete_url
    assert_response :success
  end

end
