class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      redirect_to items_path
    else
      render 'edit'
    end
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      flash[:success] = "Recipe Added!"
      redirect_to @item
    else
      render 'new'
    end
  end

end
