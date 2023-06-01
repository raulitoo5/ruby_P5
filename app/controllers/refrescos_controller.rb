class RefrescosController < ApplicationController
  before_action :set_refresco, only: %i[ show edit update destroy ]

  # GET /refrescos or /refrescos.json
  def index
    @refrescos = Refresco.all
  end

  # GET /refrescos/1 or /refrescos/1.json
  def show
  end

  # GET /refrescos/new
  def new
    @refresco = Refresco.new
  end

  # GET /refrescos/1/edit
  def edit
  end

  # POST /refrescos or /refrescos.json
  def create
    @refresco = Refresco.new(refresco_params)

    respond_to do |format|
      if @refresco.save
        format.html { redirect_to refresco_url(@refresco), notice: "Refresco was successfully created." }
        format.json { render :show, status: :created, location: @refresco }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @refresco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refrescos/1 or /refrescos/1.json
  def update
    respond_to do |format|
      if @refresco.update(refresco_params)
        format.html { redirect_to refresco_url(@refresco), notice: "Refresco was successfully updated." }
        format.json { render :show, status: :ok, location: @refresco }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @refresco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refrescos/1 or /refrescos/1.json
  def destroy
    @refresco.destroy

    respond_to do |format|
      format.html { redirect_to refrescos_url, notice: "Refresco was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refresco
      @refresco = Refresco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def refresco_params
      params.require(:refresco).permit(:nombre)
    end
end
