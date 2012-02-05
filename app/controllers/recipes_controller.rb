class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    @items = Item.all
#   @recipe.ingredients.build
    5.times { @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      redirect_to @recipe, :notice => "Recipe Added!"
    else
      render 'new'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @items = Item.all
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(params[:recipe])
      redirect_to @recipe, :notice => 'Recipe Updated!'
    else
      render 'edit'
    end
  end

  def index
    @account = current_user.account
    @recipes = @account.recipes
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path, :notice => 'Recipe Deleted.'
  end

end
