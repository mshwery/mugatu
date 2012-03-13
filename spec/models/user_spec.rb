require 'spec_helper'
require 'factory'

describe User do
  it "should authenticate with matching username and password" do
    user = Factory(:user, :account_id => 1, :name => 'Frank', :email => 'frank@gmail.com', :password => 'secret', :password_confirmation => 'secret')
    User.find_by_email('frank@gmail.com').try(:authenticate, 'secret').should == user
  end
end 

# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  admin           :boolean         default(FALSE)
#  account_id      :integer
#  password_digest :string(255)
#

