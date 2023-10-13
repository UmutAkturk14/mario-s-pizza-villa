require "test_helper"

class OrderItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get delete" do
    get order_items_delete_url
    assert_response :success
  end
end
