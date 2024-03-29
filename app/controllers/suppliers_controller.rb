class SuppliersController < ApplicationController
    before_action :set_supplier, only: [:show, :edit, :update, :destroy]
  
    def index
      @suppliers = Supplier.all
    end
  
    def new
      @supplier = Supplier.new
    end
  
    def create
      @supplier = Supplier.new(supplier_params)
  
      if @supplier.save
        redirect_to @supplier, notice: 'Supplier was successfully created.'
      else
        render :new
      end
    end

    def update
      if @supplier.update(supplier_params)
        redirect_to @supplier, notice: 'Supplier was successfully updated.'
      else
        render :edit
      end
    end
  
    private
  
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end
  
    def supplier_params
      params.require(:supplier).permit(:name, :phone_number, :email)
    end
  end
  