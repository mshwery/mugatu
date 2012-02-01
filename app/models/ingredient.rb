# == Schema Information
#
# Table name: ingredients
#
#  quantity   :decimal(, )
#  created_at :datetime
#  updated_at :datetime
#  recipe_id  :integer
#  item_id    :integer
#

class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item

  attr_accessible :quantity, :item_id, :recipe_id

  set_primary_key :recipe_id

end





