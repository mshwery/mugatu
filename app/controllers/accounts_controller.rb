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
      flash[:notice] = "Successfully created account."
      redirect_to root_url(:subdomain => @account.name)
    else
      render :action => 'new'
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    if @account.update_attributes(params[:account])
      flash[:notice] = "Successfully updated account."
      redirect_to @account
    else
      render :action => 'edit'
    end
  end
 
  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    flash[:notice] = "Successfully destroyed account."
    redirect_to accounts_url
  end

  private
    def require_permission
      redirect_to login_url(:subdomain => false) unless has_permission?
    end

    def has_permission?
      if current_user && (current_user.account.name == request.subdomain)
        return true
      else
        false
      end
    end
end
