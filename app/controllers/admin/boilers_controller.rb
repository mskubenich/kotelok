# coding: utf-8

class Admin::BoilersController < Admin::AdminController

  def index
    @boiler = Boiler.first
    if @boiler
      redirect_to edit_admin_boiler_path @boiler
    end
  end

  # GET /admin/boilers/new
  # GET /admin/boilers/new.json
  def new
    @boiler = Boiler.new

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @boiler }
    end
  end

  # GET /admin/boilers/1/edit
  def edit
    @boiler = Boiler.find(params[:id])
  end

  # POST /admin/boilers
  # POST /admin/boilers.json
  def create
    @boiler = Boiler.new(params[:boiler])

    respond_to do |format|
      if @boiler.save
        format.html { redirect_to boilers_path, notice: 'Страница котлов успешно создана.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /admin/boilers/1
  # PUT /admin/boilers/1.json
  def update
    @boiler = Boiler.find(params[:id])

    respond_to do |format|
      if @boiler.update_attributes(params[:boiler])
        format.html { redirect_to boilers_path, notice: 'Страница котлов успешно обновлена.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @boiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/boilers/1
  # DELETE /admin/boilers/1.json
  def destroy
    @boiler = Boiler.find(params[:id])
    @boiler.destroy

    respond_to do |format|
      format.html { redirect_to admin_boilers_url }
      format.json { head :no_content }
    end
  end
end
