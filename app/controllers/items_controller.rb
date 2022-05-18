class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.valid?
      redirect_to item_path(@item), notice: "Item Created"
    else
      flash[:errors] = @item.errors.full_messages
      redirect_to new_item_path
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to item_path(@item), notice: "Item Updated"
    else
      flash[:errors] = @item.errors.full_messages
      redirect_to items_path
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path, alert: "Item has been deleted"
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, warehouse_ids: [])
  end
end
