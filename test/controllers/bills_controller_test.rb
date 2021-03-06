require "test_helper"

class BillsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bills_index_url
    assert_response :success
  end

  test "should get read" do
    get bills_read_url
    assert_response :success
  end

  test "should get create" do
    get bills_create_url
    assert_response :success
  end

  test "should get update" do
    get bills_update_url
    assert_response :success
  end
end
