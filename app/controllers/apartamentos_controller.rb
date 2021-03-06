require 'FillingBoletos'
require 'AddUsers'

class ApartamentosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_apartamento, only: [:show, :edit, :update, :destroy]

  # GET /apartamentos
  # GET /apartamentos.json
  def index
    @q = Apartamento.ransack(params[:q])  
    @apartamentos = @q.result
    puts('User id')
    puts(current_user.id)
  end

  # GET /apartamentos/1
  # GET /apartamentos/1.json
  def show
  end

  # GET /apartamentos/new
  def new
    @apartamento = Apartamento.new
    
  end

  # GET /apartamentos/1/edit
  def edit
   
  end

  # POST /apartamentos
  # POST /apartamentos.json
  def create
    @apartamento = Apartamento.new(apartamento_params)

    respond_to do |format|
      if @apartamento.save
        #Template Method
        f = FillingBoletos.new
        f.fill(@apartamento.id)

        u = AddUsers.new
        u.creatingUser(@apartamento)
        
        format.html { redirect_to @apartamento, notice: 'Novo Apartamento foi adicionado com sucesso!' }
        format.json { render :show, status: :created, location: @apartamento }
      else
        format.html { render :new }
        format.json { render json: @apartamento.errors, status: :unprocessable_entity }
      end
    end
    
    
  end

  # PATCH/PUT /apartamentos/1
  # PATCH/PUT /apartamentos/1.json
  def update
    respond_to do |format|
      if @apartamento.update(apartamento_params)
        format.html { redirect_to @apartamento, notice: 'Novo Apartamento foi editado com sucesso!' }
        format.json { render :show, status: :ok, location: @apartamento }
      else
        format.html { render :edit }
        format.json { render json: @apartamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartamentos/1
  # DELETE /apartamentos/1.json
  def destroy
    @apartamento.destroy
    respond_to do |format|
      format.html { redirect_to apartamentos_url, notice: 'O Apartamento foi apagado!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartamento
      @apartamento = Apartamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartamento_params
      params.require(:apartamento).permit(:local, :nome_proprietario, :cpf_proprietario, :nome_morador, :matricula_iptu)
    end
end
