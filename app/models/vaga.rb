class Vaga < ApplicationRecord
  belongs_to :apartamento

  validates_presence_of :local, :apartamento_id, :modelo_carro, :car_carro, :placa_carro
end
