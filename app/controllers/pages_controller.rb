class PagesController < ApplicationController
  def home
    @title = "Home"
    @accounts = Account.all
  end
end
