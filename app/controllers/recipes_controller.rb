class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    @items = Item.all
    @recipe.ingredients.build
#    1.times do
#      ingredient = @recipe.ingredients.build      
#    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      flash[:success] = "Recipe Added!"
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to root_url(:subdomain => false)
  end

end
