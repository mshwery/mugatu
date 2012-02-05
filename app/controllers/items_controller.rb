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
      redirect_to items_path, :notice => 'Item Updated!'
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
      redirect_to @item, :success => 'Item Added!'
    else
      render 'new'
    end
  end

end
