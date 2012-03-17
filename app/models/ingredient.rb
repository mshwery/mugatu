class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item
  belongs_to :unit ## each unit could be assigned to many ingredients, but each ingredient can only be assigned one unit

  attr_accessible :quantity, :item_id, :unit_id

  validates :quantity, :presence => true
  validates :item_id, :presence => true
  validates :unit_id, :presence => true

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
#  unit_id    :integer
#

