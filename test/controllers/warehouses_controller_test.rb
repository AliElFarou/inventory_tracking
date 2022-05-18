require "./test/test_helper"

class WarehousesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @warehouse = Warehouse.create(name: "Amazon", location: "Ottawa")
  end

  test "should get index" do
    get warehouses_path
    assert_response :success
  end

  test "should get new" do
    get new_warehouse_path
    assert_response :success
  end

  test "should get show" do
    get warehouse_path(@warehouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_warehouse_path(@warehouse)
    assert_response :success
  end

end
