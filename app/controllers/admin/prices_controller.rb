# coding: utf-8

class Admin::PricesController < ApplicationController

  def index
    @prices_page = PricePage.first
    if @prices_page
      redirect_to edit_admin_price_path @prices_page
    end
  end

  def show
    @prices_page = PricePage.find(params[:id])
  end

  def new
    @prices_page = PricePage.new
  end

  def edit
    @prices_page = PricePage.find(params[:id])
  end

  def create
    @prices_page = PricePage.new(params[:price_page])

    respond_to do |format|
      if @prices_page.save
        format.html { redirect_to prices_path, notice: 'Страница цен успешно создана.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @prices_page = PricePage.find(params[:id])

    respond_to do |format|
      if @prices_page.update_attributes(params[:price_page])
        format.html { redirect_to prices_path, notice: 'Страница цен успешно обновлена.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @prices_page = PricePage.find(params[:id])
    @prices_page.destroy

    respond_to do |format|
      format.html { redirect_to admin_prices_url }
      format.json { head :no_content }
    end
  end
end
