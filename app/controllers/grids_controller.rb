class GridsController < ApplicationController
  before_action :set_grid, only: [:show, :edit, :update, :destroy]

  # GET /grids
  # GET /grids.json
  def index
    @grids = Grid.all
  end

  # GET /grids/1
  # GET /grids/1.json
  def show
  end

  # GET /grids/new
  def new
    @grid = Grid.new
  end

  # GET /grids/1/edit
  def edit
  end

  # POST /grids
  # POST /grids.json
  def create
    @grid = Grid.new(grid_params)

    respond_to do |format|
      if @grid.save
        format.html { redirect_to @grid, notice: 'Grid was successfully created.' }
        format.json { render :show, status: :created, location: @grid }
      else
        format.html { render :new }
        format.json { render json: @grid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grids/1
  # PATCH/PUT /grids/1.json
  def update
    respond_to do |format|
      if @grid.update(grid_params)
        format.html { redirect_to @grid, notice: 'Grid was successfully updated.' }
        format.json { render :show, status: :ok, location: @grid }
      else
        format.html { render :edit }
        format.json { render json: @grid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grids/1
  # DELETE /grids/1.json
  def destroy
    @grid.destroy
    respond_to do |format|
      format.html { redirect_to grids_url, notice: 'Grid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grid
      @grid = Grid.find(params[:id])
      @comments = @grid.comments.all
      @comment = @grid.comments.build
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grid_params
      params.require(:grid).permit(:title, :description, :picture)
    end
end
