class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def support
    @title = "Support"
  end

  def contact
    @title = "Contact"
  end

end
