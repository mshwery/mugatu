require 'spec_helper'

describe User do
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

