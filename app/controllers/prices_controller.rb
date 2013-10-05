class PricesController < ApplicationController
  before_filter :tab

  def index
  end

  def show
    @price_page = PricePage.find(params[:id])
  end

  private

  def tab
    @tab = 'price'
  end
end
