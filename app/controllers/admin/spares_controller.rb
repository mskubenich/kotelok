# coding: utf-8

class Admin::SparesController < Admin::AdminController

  def index
    @spare = Spare.first
    if @spare
      redirect_to edit_admin_spare_path @spare
    end
  end

  def show
    @spare = Spare.find(params[:id])
  end

  def new
    @spare = Spare.new
  end

  def edit
    @spare = Spare.find(params[:id])
  end

  def create
    @spare = Spare.new(params[:spare])

    respond_to do |format|
      if @spare.save
        format.html { redirect_to spares_path, notice: 'Страница запчастей успешно создана.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @spare = Spare.find(params[:id])

    respond_to do |format|
      if @spare.update_attributes(params[:spare])
        format.html { redirect_to spares_path, notice: 'Страница запчастей успешно обновлена.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @spare = Spare.find(params[:id])
    @spare.destroy

    respond_to do |format|
      format.html { redirect_to admin_spares_url }
      format.json { head :no_content }
    end
  end
end
