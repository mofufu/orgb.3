class SwotsController < ApplicationController
  before_action :set_swot, only: [:show, :edit, :update, :destroy]

  # GET /swots
  # GET /swots.json
  def index
    @swots = Swot.all
  end

  # GET /swots/1
  # GET /swots/1.json
  def show
  end

  # GET /swots/new
  def new
    @swot = Swot.new
  end

  # GET /swots/1/edit
  def edit
  end

  # POST /swots
  # POST /swots.json
  def create
    @swot = Swot.new(swot_params)

    respond_to do |format|
      if @swot.save
        format.html { redirect_to @swot, notice: 'Swot was successfully created.' }
        format.json { render :show, status: :created, location: @swot }
      else
        format.html { render :new }
        format.json { render json: @swot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swots/1
  # PATCH/PUT /swots/1.json
  def update
    respond_to do |format|
      if @swot.update(swot_params)
        format.html { redirect_to @swot, notice: 'Swot was successfully updated.' }
        format.json { render :show, status: :ok, location: @swot }
      else
        format.html { render :edit }
        format.json { render json: @swot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swots/1
  # DELETE /swots/1.json
  def destroy
    @swot.destroy
    respond_to do |format|
      format.html { redirect_to swots_url, notice: 'Swot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swot
      @swot = Swot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def swot_params
      params.require(:swot).permit(:company_name, :strength, :weak, :opportunity, :threat)
    end
end
