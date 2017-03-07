json.extract! encomenda, :id, :tipo, :destinatario, :remetente, :data_chegada, :apartamento_id, :obs, :created_at, :updated_at
json.url encomenda_url(encomenda, format: :json)
