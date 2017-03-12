class Apartamento < ApplicationRecord
	has_many :boleto
	has_many :vaga
	has_many :encomenda


	def self.search(query)
		where("local like ? OR nome_proprietario like ? OR cpf_proprietario like ? OR nome_morador like ?","%#{query}%","%#{query}%","%#{query}%","%#{query}%")
	end

	validates_presence_of :local, :nome_proprietario, :cpf_proprietario, :nome_morador, :senha



end
