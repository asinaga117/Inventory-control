class Admin::InventryesController < ApplicationController
  def new
    @inventry = Inventry.new
  end
  
  def create
    @inventry = Inventry.new(inventry_params)
    @inventry.save
    redirect_to admin_inventryes_path(@inventry.id)
  end

  def index
    @inventryes = Inventry.all
  end

  def show
    @inventry = Inventry.find(params[:id])
  end

  def edit
  end
  
  private
  
  def inventry_params
    params.require(:inventry).permit(:image,:name,:place,:is_active,:introduction,:amount)
  end
end
