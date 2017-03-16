class Boleto < ApplicationRecord
  belongs_to :apartamento

  validates_presence_of :apartamento_id, :codigo, :data_emissao, :data_vencimento
end
