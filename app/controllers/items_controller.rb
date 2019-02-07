class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :buy, :pay]

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
    @items = Item.order("RAND()").limit(6)
  end
  def buy
  end
  def search
    @q = Item.search(search_params)
    @search_data = @q.result(distinct: true)
    @search_count = @search_data.length
  end

  def pay
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    charge = Payjp::Charge.create(
      amount: @item.price,
      card: params['payjp-token'],
      currency: 'jpy',
    )
  end

  private
  def search_params
    params.require(:q).permit(:name_cont)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
