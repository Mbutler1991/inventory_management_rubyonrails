class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]
  
    
    def index
      @items = Item.all
    end
 
    def show
      @item = Item.find(params[:id])
    end

    def new
      @item = Item.new
    end
  
    def create
      @item = Item.new(item_params)
  
      if @item.save
        redirect_to @item, notice: 'Item was successfully created.'
      else
        render :new
      end
    end

    def update
      if @item.update(item_params)
        redirect_to @item, notice: 'Item was successfully updated.'
      else
        render :edit
      end
    end
  
    private
  
    def set_item
      @item = Item.find(params[:id])
    end
  
    def item_params
        params.require(:item).permit(:name, :quantity, :category_id, :supplier_id)
    end
  end
  
