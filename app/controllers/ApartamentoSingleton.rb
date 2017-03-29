require "singleton"
require "apartamentos_controller"

class ApartamentoSingleton
	include Singleton

	def returnApartamentos
		@apartamento = Apartamento.all
	end
end