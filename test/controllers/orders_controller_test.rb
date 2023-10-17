require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get finish_purchase" do
    get orders_finish_purchase_url
    assert_response :success
  end
end
