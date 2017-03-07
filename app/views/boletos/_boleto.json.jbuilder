json.extract! boleto, :id, :apartamento_id, :codigo, :valor_boleto, :juros_boleto, :data_emissao, :data_vencimento, :status, :created_at, :updated_at
json.url boleto_url(boleto, format: :json)
