# == Schema Information
#
# Table name: recipes
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :items, :through => :ingredients
end


