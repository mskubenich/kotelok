# coding: utf-8

class Admin::GimagesController < ApplicationController

  def index
    @gimages = Gimage.all
  end

  def new
    @gimage = Gimage.new
  end

  def create
    @gimage = Gimage.new(params[:gimage])

    if @gimage.save
      redirect_to admin_gimages_path, notice: 'Изображение успешно добавлено в галерею.'
    else
      render action: "new"
    end
  end

  def destroy
    @gimage = Gimage.find(params[:id])
    @gimage.destroy

    redirect_to admin_gimages_url
  end

end

