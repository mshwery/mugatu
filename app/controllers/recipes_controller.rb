class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    @items = Item.all
#    @recipe.ingredients.build
    2.times { @recipe.ingredients.build }
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

  def show
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(params[:recipe])
      flash[:success] = "Recipe Updated!"
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients.build
    @items = Item.all
  end

  def index
    @account = Account.find_by_name(request.subdomain)
    @recipes = @account.recipes
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

end
