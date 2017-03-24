require 'AddBoleto'
require 'boletos_controller'

class FillingBoletos 
	def fill(apartamento)
		d = DateTime.now.month
		for i in d..12
          	if(i == 12)
          		BoletoYearType.atribBoletoNextYear(apartamento)
          	else
            	BoletoYearType.atribBoletoCurrentYear(apartamento,i)
          	end	
        end
	end	
end