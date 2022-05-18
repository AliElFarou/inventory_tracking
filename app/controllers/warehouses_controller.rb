class WarehousesController < ApplicationController

  before_action :set_warehouse, only: [:show, :edit, :update, :destroy]

  def index
    @warehouses = Warehouse.all
  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.create(warehouse_params)
    if @warehouse.valid?
      redirect_to warehouse_path(@warehouse), notice: "Warehouse created"
    else
      flash[:errors] = @warehouse.errors.full_messages
      redirect_to new_warehouse_path
    end
  end

  def show
    #
  end

  def edit
    #
  end

  def update
    if @warehouse.update(warehouse_params)
      redirect_to warehouse_path(@warehouse), notice: "Warehouse Updated"
    else
      flash[:errors] = @warehouse.errors.full_messages
      redirect_to warehouses_path
    end
  end

  def destroy
    @warehouse.destroy
    redirect_to warehouses_path, alert: "Warehouse has been deleted"
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:name, :location, item_ids: [])
  end

  def set_warehouse
    @warehouse = Warehouse.find(params[:id])
  end
end
