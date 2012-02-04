class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item

  attr_accessible :quantity, :item_id

end
# == Schema Information
#
# Table name: ingredients
#
#  id         :integer         not null, primary key
#  quantity   :string(255)
#  recipe_id  :integer
#  item_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

