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

  test "should create warehouse" do
    assert_difference("Warehouse.count") do
      post warehouses_url, params: { warehouse: { name: "Walmart", location: "Toronto" } }
    end
  
    assert_redirected_to warehouse_path(Warehouse.last)
    assert_equal "Walmart", Warehouse.last.name
    assert_equal "Toronto", Warehouse.last.location
  end

  test "should get show" do
    get warehouse_path(@warehouse.id)
    assert_response :success
  end

  test "should get edit" do
    get edit_warehouse_path(@warehouse.id)
    assert_response :success
  end

  test "should update warehouse" do
    patch warehouse_url(@warehouse), params: { warehouse: { name: "Walmart", location: "Toronto" } }
  
    assert_redirected_to warehouse_path(@warehouse)
    # Reload association to fetch updated data and assert that title is updated.
    @warehouse.reload
    assert_equal "Walmart", @warehouse.name
    assert_equal "Toronto", @warehouse.location
  end

  test "should destroy warehouse" do
    assert_difference("Warehouse.count", -1) do
      delete warehouse_path(@warehouse.id)
    end
  
    assert_redirected_to warehouses_path
  end

end
