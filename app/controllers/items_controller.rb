class ItemsController < ApplicationController
  def index
  end
  def create
  end
  def sell
    @item = Item.new
    @prefecture = Prefecture.new

  end

end
