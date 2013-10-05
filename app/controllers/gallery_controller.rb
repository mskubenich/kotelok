class GalleryController < ApplicationController
  before_filter :tab

  def index
    @images = Gimage.all
  end

  private

  def tab
    @tab = 'gallery'
  end
end
