class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def edit
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
