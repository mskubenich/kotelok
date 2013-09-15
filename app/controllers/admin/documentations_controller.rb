class Admin::DocumentationsController < Admin::AdminController

  def index
    @documentations_grid = initialize_grid(Documentation)
  end

  def show
    @documentation = Documentation.find(params[:id])
  end

  def new
    @documentation = Documentation.new
  end

  def edit
    @documentation = Documentation.find(params[:id])
  end

  def create
    @documentation = Documentation.new(params[:documentation])

    respond_to do |format|
      if @documentation.save
        format.html { redirect_to @documentation, notice: 'Documentation was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @documentation = Documentation.find(params[:id])

    respond_to do |format|
      if @documentation.update_attributes(params[:documentation])
        format.html { redirect_to @documentation, notice: 'Boiler was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @documentation = Documentation.find(params[:id])
    @documentation.destroy

    respond_to do |format|
      format.html { redirect_to admin_documentations_url }
      format.json { head :no_content }
    end
  end
end
