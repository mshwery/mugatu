# == Schema Information
#
# Table name: subdomains
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Subdomain < ActiveRecord::Base
  has_many :users, :dependent => :destroy

  validates :name, :presence => true,
                    :uniqueness => { :case_sensitive => false }
end
