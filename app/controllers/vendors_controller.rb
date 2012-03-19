class VendorsController < ApplicationController

  def new
    @vendor = Vendor.new
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

  def update
  end

  def create
    @vendor = Vendor.new(params[:vendor])
    if @vendor.save
      redirect_to current_user.account, :notice => "Vendor added!"
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
    redirect_to current_user.account, :notice => 'Vendor Deleted.'
  end

end
