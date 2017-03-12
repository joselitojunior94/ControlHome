class Apartamento < ApplicationRecord
	has_many :boleto
	has_many :vaga
	has_many :encomenda

	validates_presence_of :local, :nome_proprietario, :cpf_proprietario, :nome_morador, :senha

end
