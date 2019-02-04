class ItemsController < ApplicationController
  def index
    @items = Item.order("RAND()").limit(4)
    @q = Item.ransack(params[:q])
    @search_data = @q.result(distinct: true)
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
  def search
    @q = Item.search(search_params)
    @search_data = @q.result(distinct: true)
    @search_count = @search_data.length
  end

  private
  def search_params
    params.require(:q).permit(:name_cont)
  end
end
