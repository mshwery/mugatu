class Unit < ActiveRecord::Base
  has_many :ingredients
  attr_accessible :name
  #has_many :items ## may end up assigning this to vendors > vendor_items because an item could have many units and quantities. this comes arbitrarily from vendors.

end


# == Schema Information
#
# Table name: units
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

