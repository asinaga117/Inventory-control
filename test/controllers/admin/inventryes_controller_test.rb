require "test_helper"

class Admin::InventryesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_inventryes_new_url
    assert_response :success
  end

  test "should get index" do
    get admin_inventryes_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_inventryes_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_inventryes_edit_url
    assert_response :success
  end
end
