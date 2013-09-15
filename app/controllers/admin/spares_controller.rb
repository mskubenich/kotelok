class Admin::SparesController < ApplicationController

  def index
    @spares_grid = initialize_grid(Spare)
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
        format.html { redirect_to @spare, notice: 'Spare was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @spare = Spare.find(params[:id])

    respond_to do |format|
      if @spare.update_attributes(params[:spare])
        format.html { redirect_to @spare, notice: 'Boiler was successfully updated.' }
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
