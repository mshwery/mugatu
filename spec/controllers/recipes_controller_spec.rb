require 'spec_helper'

describe RecipesController do

  describe "GET index" do
    it "shows recipes" do
      get :index
      response.should render_template(:index)
    end
  end

end
