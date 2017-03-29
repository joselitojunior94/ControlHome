require 'AddBoleto'
#require 'BoletoYearType'
require 'boletos_controller'

class FillingBoletos 
  def fill(apartamento)
    d = DateTime.now.month
    adding = AddBoleto.new
    #adding = BoletoYearType.new
    for i in d..12
            if(i == 12)
               adding.atribBoletoNextYear(apartamento)
               #adding.atrib.atribBoletoNextYear(apartamento)
            else
               adding.atribBoletoCurrentYear(apartamento,i)
               #adding.atribBoletoCurrentYear(apartamento,i)
            end 
        end
  end 
end