# == Schema Information
#
# Table name: recipes
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#  account_id :integer
#

class Recipe < ActiveRecord::Base
  belongs_to :account

  attr_accessible :name, :notes, :account_id, :ingredients_attributes
  
  has_many :ingredients, :dependent => :destroy
  has_many :items, :through => :ingredients

  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |a| a[:quantity].blank? }, :allow_destroy => true

end





