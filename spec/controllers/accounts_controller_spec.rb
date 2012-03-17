require 'spec_helper'

describe AccountsController do

  describe "GET /dashboard" do

    describe "if not logged in" do
      it "should get redirected" do
        get 'index'
        response.should_not be_success
      end
    end
    
  end

end