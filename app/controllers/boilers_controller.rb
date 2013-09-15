class BoilersController < ApplicationController
  before_filter :tab

  def index
    params[:page] ||= 1
    params[:per_page] ||= 7
    @boilers = Boiler.paginate page: params[:page], per_page: params[:per_page]
  end

  def show
    @boiler = Boiler.find(params[:id])
  end

  private

  def tab
    @tab = 'boilers'
  end
end
