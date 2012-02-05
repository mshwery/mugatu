class UsersController < ApplicationController
  before_filter :require_user, :except => 'show'
  before_filter :require_admin, :only => ['new','create']

  def show
    @user = current_user
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "Sign up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to user_path, :notice => 'Your profile was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user == current_user
      redirect_to dashboard_path, :alert => "You cannot delete yourself yet..."
    else
      @user.destroy
      redirect_to dashboard_path, :notice => 'User Deleted.'
    end
  end

end