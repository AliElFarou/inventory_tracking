class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.create(params.require(:warehouse).permit(:name, :location))
    if @warehouse.valid?
      redirect_to warehouses_path
    else
      flash[:errors] = @warehouse.errors.full_messages
      redirect_to new_warehouse_path
    end
  end

  def show
    @warehouse = Warehouse.find(params[:id])
  end

  def edit
    @warehouse = Warehouse.find(params[:id])
  end

  def update
    @warehouse = Item.find(params[:id])
    @warehouse.update(params.require(:warehouse).permit(:name, :location))
    redirect_to root_path
  end

  def destroy
    @warehouse = Warehouse.find(params[:id])
    @warehouse.destroy
    redirect_to warehouses_path
  end
end
