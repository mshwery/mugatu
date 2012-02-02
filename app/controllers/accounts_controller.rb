class AccountsController < ApplicationController      
  before_filter :require_permission, :only => 'show'

  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find_by_name!(request.subdomain)
  end
  
  def new
    @account = Account.new    
    @account.users.build
    @title = "Sign up"
  end

  def create
    @account = Account.new(params[:account])
    if @account.save
      redirect_to root_url(:subdomain => @account.name), :notice => "Successfully created account."
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

  private
    def require_permission
      redirect_to login_url(:subdomain => false) unless has_permission?
    end

    def has_permission?
      if current_user && (current_user.account.name == request.subdomain)
        return true
      else
        return false
      end
    end
end
