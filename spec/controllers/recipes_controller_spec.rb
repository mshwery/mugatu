require 'spec_helper'

describe RecipesController do
  describe "GET index" do
    it "assigns @recipes" do
      recipe = Recipe.create
      get :show
      assigns(:recipe).should eq([recipe])
    end

    it "renders the show template" do
      get :show
      response.should render_template("show")
    end
  end

end
