class ItemsController < ApplicationController
  def index
    @items
  end

  def new
  end

  def create
    Item.create(image: item_params[:image])
  end

  private
  def items_params
    params.permit(:image)
  end

end
