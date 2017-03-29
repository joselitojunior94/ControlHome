#require 'AddBoleto'
class BoletoYearType < AddBoleto
	def atrib
		atribBoletoNextYear
		atribBoletoCurrentYear
	end
end