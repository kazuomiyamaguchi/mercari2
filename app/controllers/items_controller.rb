class ItemsController < ApplicationController
  def index
    @items = Item.order("RAND()").limit(4)
  end
  def create
  end
  def sell
    @item = Item.new
    @prefecture = Prefecture.new
  end
  def show
  end
  def buy
  end
end
