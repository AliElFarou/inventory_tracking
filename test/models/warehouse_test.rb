require "./test/test_helper"

class WarehouseTest < ActiveSupport::TestCase
  test "validates name" do
    item = Item.new(description: "Some Item")
    item.valid?

    assert_equal item.errors.full_messages, ["Name can't be blank"]
  end

  test "validates name uniqueness" do
    item_1 = Item.create(name: "foo", description: "Some Item")
    assert item_1.valid?

    item_2 = Item.new(name: item_1.name, description: "Some Item 2")
    item_2.valid?

    assert_equal item_2.errors.full_messages, ["Name has already been taken"]
  end

  test "validates description" do
    item = Item.new(name: "Some Item")
    item.valid?

    assert_equal item.errors.full_messages, ["Description can't be blank"]
  end
end
