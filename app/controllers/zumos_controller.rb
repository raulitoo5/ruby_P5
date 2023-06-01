class ZumosController < ApplicationController
  before_action :set_zumo, only: %i[ show edit update destroy ]

  # GET /zumos or /zumos.json
  def index
    @zumos = Zumo.all
  end

  # GET /zumos/1 or /zumos/1.json
  def show
  end

  # GET /zumos/new
  def new
    @zumo = Zumo.new
  end

  # GET /zumos/1/edit
  def edit
  end

  # POST /zumos or /zumos.json
  def create
    @zumo = Zumo.new(zumo_params)

    respond_to do |format|
      if @zumo.save
        format.html { redirect_to zumo_url(@zumo), notice: "Zumo was successfully created." }
        format.json { render :show, status: :created, location: @zumo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @zumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zumos/1 or /zumos/1.json
  def update
    respond_to do |format|
      if @zumo.update(zumo_params)
        format.html { redirect_to zumo_url(@zumo), notice: "Zumo was successfully updated." }
        format.json { render :show, status: :ok, location: @zumo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @zumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zumos/1 or /zumos/1.json
  def destroy
    @zumo.destroy

    respond_to do |format|
      format.html { redirect_to zumos_url, notice: "Zumo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zumo
      @zumo = Zumo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def zumo_params
      params.require(:zumo).permit(:nombre)
    end
end
