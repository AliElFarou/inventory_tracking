require "./test/test_helper"

class ItemTest < ActiveSupport::TestCase
  test "validates name" do
    warehouse = Warehouse.new(location: "Ottawa")
    warehouse.valid?

    assert_equal warehouse.errors.full_messages, ["Name can't be blank"]
  end

  test "validates location uniqueness" do
    warehouse_1 = Warehouse.create(name: "foo", location: "location")
    assert warehouse_1.valid?

    warehouse_2 = Warehouse.new(name: "bar", location: warehouse_1.location)
    warehouse_2.valid?

    assert_equal warehouse_2.errors.full_messages, ["Location has already been taken"]
  end

  test "validates location" do
    warehouse = Warehouse.new(name: "Some warehouse")
    warehouse.valid?

    assert_equal warehouse.errors.full_messages, ["Location can't be blank"]
  end
end
