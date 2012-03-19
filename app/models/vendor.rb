# == Schema Information
#
# Table name: vendors
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  phone      :string(255)
#  address    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Vendor < ActiveRecord::Base
  attr_accessible :name, :phone, :address, :account_id
  belongs_to :account

  validates :name,  :presence   => true,
                    :length     => { :maximum => 50 },
                    :uniqueness => { :case_sensitive => false }
end
