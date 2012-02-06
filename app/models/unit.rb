class Unit < ActiveRecord::Base
  has_many :ingredients
  has_many :items

end

# == Schema Information
#
# Table name: units
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

