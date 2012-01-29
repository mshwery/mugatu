# == Schema Information
#
# Table name: accounts
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Account < ActiveRecord::Base
  attr_accessible :name, :users_attributes

  has_many :users, :dependent => :destroy
#  has_many :recipes, :dependent => :destroy

  validates :name, :presence => true,
                    :uniqueness => { :case_sensitive => false }

  accepts_nested_attributes_for :users
  
  before_create :downcase_name

  private
    def downcase_name
      self.name.downcase!
    end

end
