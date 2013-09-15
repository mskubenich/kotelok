class SparesController < ApplicationController
  before_filter :tab

  def index
    params[:page] ||= 1
    params[:per_page] ||= 7
    @spares = Spare.paginate page: params[:page], per_page: params[:per_page]
  end

  def show
    @spare = Spare.find(params[:id])
  end

  private

  def tab
    @tab = 'spares'
  end
end
