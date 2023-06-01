module Api
module V1
    class BebidasController < ApplicationController
    
    skip_before_action :verify_authenticity_token
    #skip_before_action :authorized
    
    def show
          @bebida = Bebida.find_by(id: params[:id])
          if (@bebida!=nil)
            render json: @bebida, status: :ok
      else
           render json: :nothing, status: :not_found
        end
    end
    
    def index
            render json: Bebida.all, status: :ok
    end
    
    def update
     @bebida = Bebida.find(params[:id])
    
      if @bebida.update(bebida_params)
            render json: @bebida, status: :ok
          else
            render json: @bebida.errors, status: :unprocessable_entity
          end
    end
    
    def create
        @bebida = Bebida.new(bebida_params)
    
          if @bebida.save
            render json: @bebida, status: :created
          else
            render json: @bebida.errors, status: :unprocessable_entity
          end
    end
    
    def destroy
        @bebida = Bebida.find(params[:id])
        if @bebida.destroy
          render json: :nothing, status: :ok
        else
          render json: :nothing, status: :unprocessable_entity
        end
    end
    private
    def bebida_params
          params.require(:bebida).permit(:nombre, :precio, :tipo, :zumo, :alcohol, :refresco)
    end
    end
    end
    end
    
    