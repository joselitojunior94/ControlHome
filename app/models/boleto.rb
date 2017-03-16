class Boleto < ApplicationRecord
  belongs_to :apartamento

  validates_presence_of :apartamento_id, :codigo, :valor_boleto, :juros_boleto, :data_emissao, :data_vencimento
end
