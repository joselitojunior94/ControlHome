require "apartamentos_controller"

class SearchApt
	def s(apartamento)
		return Apartamento.find(apartamento).local

	end
end