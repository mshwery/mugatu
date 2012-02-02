require 'spec_helper'

describe Recipe do

  before(:each) do
    @recipe = Recipe.new({:name => "Name", :notes => "These are notes.", :account_id => 1})
  end

  describe "#new" do
    it "returns a new recipe object" do
      @recipe.should be_an_instance_of Recipe
    end
  end
end


# == Schema Information
#
# Table name: recipes
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#  account_id :integer
#

