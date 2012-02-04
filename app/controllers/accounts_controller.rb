class AccountsController < ApplicationController      
  before_filter :require_user, :except => ['new', 'create']
  before_filter :require_permission, :only => ['show', 'edit']

  def index
    @account = current_user.account
    @items = Item.all
  end

  def show
    @account = Account.find(params[:id])
  end
  
  def new
    @account = Account.new    
    @account.users.build
    @title = "Sign up"
  end

  def create
    @account = Account.new(params[:account])
    if @account.save
      redirect_to root_url, :notice => "Successfully created account."
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
      redirect_to root_url unless logged_in? && (current_user.account.id == params[:id])
    end
    
    def logged_in?
      if current_user
        return true
      else
        false
      end
    end
end
