class PagesController < ApplicationController
  def home
    @title = "Home"
    @accounts = Account.all
  end

  def support
    @title = "Support"
  end

  def contact
    @title = "Contact"
  end

end
