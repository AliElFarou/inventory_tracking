require "./test/test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @item = Item.create(name: "Saw", description: "cut things")
  end

  test "should get index" do
    get items_path
    assert_response :success
  end

  test "should get new" do
    get new_item_path
    assert_response :success
  end

  test "should get show" do
    get item_path(@item.id)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_path(@item.id)
    assert_response :success
  end

end
