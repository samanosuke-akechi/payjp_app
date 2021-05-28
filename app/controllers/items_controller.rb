class ItemsController < ApplicationController
  before_action :find_item, only: :order
  
  def index
    @items = Item.all
  end

  def order  # 購入するときのアクション
    redirect_to new_card_path and return unless current_user.card.present?
  end
  
  private

  def find_item
    @item = Item.find(params[:id])
  end
end