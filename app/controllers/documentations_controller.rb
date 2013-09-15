class DocumentationsController < ApplicationController
  before_filter :tab

  def index
    params[:page] ||= 1
    params[:per_page] ||= 7
    @documentations = Documentation.paginate page: params[:page], per_page: params[:per_page]
  end

  def show
    @documentation = Documentation.find(params[:id])
  end

  private

  def tab
    @tab = 'docs'
  end
end
