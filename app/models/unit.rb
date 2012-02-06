class Unit < ActiveRecord::Base
  belongs_to :ingredient

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

