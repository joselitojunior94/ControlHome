class Encomenda < ApplicationRecord
  belongs_to :apartamento

  validates_presence_of :tipo, :destinatario, :remetente, :data_chegada, :apartamento_id

end