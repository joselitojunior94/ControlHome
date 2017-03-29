#require 'BoletoYearType'
require 'boletos_controller'

class AddBoleto
        def atribBoletoNextYear(apartamento)
                boleto = Boleto.new
                boleto.apartamento_id = apartamento
                boleto.data_emissao = DateTime.new(DateTime.now.year, 12, 2, 0, 0, 0)
                boleto.data_vencimento = DateTime.new((DateTime.now.year+1), 1, 2, 0, 0, 0)
                boleto.codigo = String(Random.new_seed) + '0000'
                boleto.created_at = DateTime.now
                boleto.updated_at = DateTime.now
                boleto.save
                return 0
        end

        def atribBoletoCurrentYear(apartamento,i)
                boleto = Boleto.new
                boleto.apartamento_id = apartamento
                boleto.data_emissao = DateTime.new(DateTime.now.year, i, 2, 0, 0, 0) 
                boleto.data_vencimento = DateTime.new(DateTime.now.year, (i+1), 2, 0, 0, 0)
                boleto.codigo = String(Random.new_seed) + '0000'
                boleto.created_at = DateTime.now
                boleto.updated_at = DateTime.now
                boleto.save
                return 0
        
        end

end