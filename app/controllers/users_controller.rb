class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user = User.new
    @account = Account.new(:user => @user)
    @title = "Sign up"
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # sign_in @user
      flash[:success] = "Welcome!"
      redirect_to @account #, :notice => "Signed up!"
    else
      render 'new'
    end
  end
end