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
    @q            = Item.ransack(search_params)
    @search_data  = @q.result(distinct: true)
    @search_count = @search_data.length
    @sizes        = Size.all
    @parents        = Category.roots
  end

  private
  def search_params
    params.require(:q).permit(
      :s,
      :name_or_brand_name_or_category_name_cont_all,
      :category_id_in,
      :brand_name_cont_all,
      :size_id_in,
      :price_gteq,
      :price_lteq,
      :condition_id_eq,
      :delivery_fee_id_eq,
      ) unless params[:q].blank?
  end
end
