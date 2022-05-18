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

  # FUNCTIONAL TESTS

  test "should create item" do
    assert_difference("Item.count") do
      post items_url, params: { item: { name: "Laser", description: "Shines Bright" } }
    end
  
    assert_redirected_to item_path(Item.last)
    assert_equal "Laser", Item.last.name
    assert_equal "Shines Bright", Item.last.description
  end

  test "should update item" do
    patch item_url(@item), params: { item: { name: "hammer", description: "hit things" } }
  
    assert_redirected_to item_path(@item)
    # Reload association to fetch updated data and assert that title is updated.
    @item.reload
    assert_equal "hammer", @item.name
    assert_equal "hit things", @item.description
  end

  test "should destroy item" do
    assert_difference("Item.count", -1) do
      delete item_path(@item.id)
    end
  
    assert_redirected_to items_path
  end

end
