class Apartamento < ApplicationRecord
	has_many :boleto
	has_many :vaga
	has_many :encomenda
	has_many :user
	

	validates :local, uniqueness: true
	validates_presence_of :local, :nome_proprietario, :cpf_proprietario, :nome_morador, :matricula_iptu

end
