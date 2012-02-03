class AccountsController < ApplicationController      
  #before_filter :authenticate_user!
  #before_filter :require_permission, :only => 'show'

  def index
    @accounts = Account.all
  end

  def show
    @account = current_user.account
#    @account = Account.find_by_name!(request.subdomain)
  end
  
  def new
    @account = Account.new    
    @account.users.build
    @title = "Sign up"
  end

  def create
    @account = Account.new(params[:account])
    if @account.save
      redirect_to root_url #(:subdomain => @account.name), :notice => "Successfully created account."
    else
      render 'new'
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    if @account.update_attributes(params[:account])
      redirect_to @account, :notice => "Successfully updated account."
    else
      render 'edit'
    end
  end
 
  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to accounts_url, :notice => "Successfully destroyed account."
  end
  
end
