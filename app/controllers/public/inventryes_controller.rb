class Public::InventryesController < ApplicationController

  def index
    @inventry = Inventry.all
  end

  def show
    @inventry = Inventry.find(params[:id])
  end
  
  private
  
  def inventry_params
    params.require(:inventry).permit(:image,:name,:place,:is_active,:introduction,:amount)
  end

end
