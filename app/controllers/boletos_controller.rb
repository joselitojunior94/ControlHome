require 'ApartamentoSingleton'
require 'SearchApt'

class BoletosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_boleto, only: [:show, :edit, :update, :destroy]

  # GET /boletos
  # GET /boletos.json
  def index
    @q = Boleto.ransack(params[:q])
    @boletos = @q.result.includes(:apartamento)
    ApartamentoSingleton.instance.returnApartamentos
  end

  # GET /boletos/1
  # GET /boletos/1.json
  def show
     ApartamentoSingleton.instance.returnApartamentos
  end

  # GET /boletos/new
  def new
    @boleto = Boleto.new
    ApartamentoSingleton.instance.returnApartamentos
  end

  # GET /boletos/1/edit
  def edit
    #@apartamento = Apartamento.all
    ApartamentoSingleton.instance.returnApartamentos
  end

  # POST /boletos
  # POST /boletos.json
  def create
    @boleto = Boleto.new(boleto_params)
    
    respond_to do |format|
      if @boleto.save
        format.html { redirect_to @boleto, notice: 'Boleto foi criado com sucesso!' }
        format.json { render :show, status: :created, location: @boleto }
      else
        format.html { render :new }
        format.json { render json: @boleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boletos/1
  # PATCH/PUT /boletos/1.json
  def update
    respond_to do |format|
      if @boleto.update(boleto_params)
        format.html { redirect_to @boleto, notice: 'Boleto foi atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @boleto }
      else
        format.html { render :edit }
        format.json { render json: @boleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boletos/1
  # DELETE /boletos/1.json
  def destroy
    @boleto.destroy
    respond_to do |format|
      format.html { redirect_to boletos_url, notice: 'Boleto foi apagado!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boleto
      @boleto = Boleto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boleto_params
      params.require(:boleto).permit(:apartamento_id, :codigo, :valor_boleto, :juros_boleto, :data_emissao, :data_vencimento, :status)
    end
end
