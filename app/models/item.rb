# == Schema Information
#
# Table name: items
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Item < ActiveRecord::Base
  has_many :ingredients
  has_many :recipes, :through => :ingredients
  belongs_to :unit
  
  attr_accessible :name, :description

end



