class Admin::InventryesController < ApplicationController
  def new
    @inventry = Inventry.new
  end

  def index
    @inventryes = Inventry.all
  end

  def show
  end

  def edit
  end
end
