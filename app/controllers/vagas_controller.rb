class VagasController < ApplicationController
  before_action :set_vaga, only: [:show, :edit, :update, :destroy]

  # GET /vagas
  # GET /vagas.json
  def index
    @vagas = Vaga.all
  end

  # GET /vagas/1
  # GET /vagas/1.json
  def show
     @apartamento = Apartamento.all
  end

  # GET /vagas/new
  def new
    @vaga = Vaga.new
    @apartamento = Apartamento.all
  end

  # GET /vagas/1/edit
  def edit
    @apartamento = Apartamento.all
  end

  # POST /vagas
  # POST /vagas.json
  def create
    @vaga = Vaga.new(vaga_params)

    respond_to do |format|
      if @vaga.save
        format.html { redirect_to @vaga, notice: 'Nova vaga de garagem foi criada com sucesso!' }
        format.json { render :show, status: :created, location: @vaga }
      else
        format.html { render :new }
        format.json { render json: @vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vagas/1
  # PATCH/PUT /vagas/1.json
  def update
    respond_to do |format|
      if @vaga.update(vaga_params)
        format.html { redirect_to @vaga, notice: 'Vaga de garagem atualizada com sucesso!' }
        format.json { render :show, status: :ok, location: @vaga }
      else
        format.html { render :edit }
        format.json { render json: @vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vagas/1
  # DELETE /vagas/1.json
  def destroy
    @vaga.destroy
    respond_to do |format|
      format.html { redirect_to vagas_url, notice: 'Vaga de garagem foi apagada!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaga
      @vaga = Vaga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vaga_params
      params.require(:vaga).permit(:local, :apartamento_id, :modelo_carro, :car_carro, :placa_carro)
    end
end
