class LineaPedidosController < ApplicationController
  before_action :set_linea_pedido, only: %i[ show edit update destroy ]

  # GET /linea_pedidos or /linea_pedidos.json
  def index
    @linea_pedidos = LineaPedido.all
  end

  # GET /linea_pedidos/1 or /linea_pedidos/1.json
  def show
  end

  # GET /linea_pedidos/new
  def new
    @linea_pedido = LineaPedido.new
  end

  # GET /linea_pedidos/1/edit
  def edit
  end

  # POST /linea_pedidos or /linea_pedidos.json
  def create
    @linea_pedido = LineaPedido.new(linea_pedido_params)

    respond_to do |format|
      if @linea_pedido.save
        format.html { redirect_to linea_pedido_url(@linea_pedido), notice: "Linea pedido was successfully created." }
        format.json { render :show, status: :created, location: @linea_pedido }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @linea_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linea_pedidos/1 or /linea_pedidos/1.json
  def update
    respond_to do |format|
      if @linea_pedido.update(linea_pedido_params)
        format.html { redirect_to linea_pedido_url(@linea_pedido), notice: "Linea pedido was successfully updated." }
        format.json { render :show, status: :ok, location: @linea_pedido }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @linea_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linea_pedidos/1 or /linea_pedidos/1.json
  def destroy
    @linea_pedido.destroy

    respond_to do |format|
      format.html { redirect_to linea_pedidos_url, notice: "Linea pedido was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linea_pedido
      @linea_pedido = LineaPedido.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def linea_pedido_params
      params.require(:linea_pedido).permit(:id_pedido, :id_bebida, :cantidad)
    end
end
