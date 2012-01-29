# == Schema Information
#
# Table name: ingredients
#
#  id         :integer         not null, primary key
#  quantity   :decimal(, )
#  created_at :datetime
#  updated_at :datetime
#

class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item
end


