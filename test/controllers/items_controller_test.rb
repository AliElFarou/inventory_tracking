require "./test/test_helper"

class ItemsControllerTest < ActionController::TestCase

  def setup
    @item = Item.create(name: "Hammer", description: "hammer things")
  end


  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get items_new_url
    assert_response :success
  end

  test "should get create" do
    get items_create_url
    assert_response :success
  end

  test "should get show" do
    get item_path(@item.id)
    assert_response :success
  end

  test "should get edit" do
    get items_edit_url
    assert_response :success
  end

  test "should get update" do
    get items_update_url
    assert_response :success
  end

  test "should get destroy" do
    get items_destroy_url
    assert_response :success
  end
end
