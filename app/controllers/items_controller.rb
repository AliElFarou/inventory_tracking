class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]

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
    #
  end

  def edit
    #
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item), notice: "Item Updated"
    else
      flash[:errors] = @item.errors.full_messages
      redirect_to items_path
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, alert: "Item has been deleted"
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, warehouse_ids: [])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
