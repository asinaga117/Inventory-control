require "test_helper"

class Public::InventryesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_inventryes_new_url
    assert_response :success
  end

  test "should get index" do
    get public_inventryes_index_url
    assert_response :success
  end

  test "should get show" do
    get public_inventryes_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_inventryes_edit_url
    assert_response :success
  end
end
