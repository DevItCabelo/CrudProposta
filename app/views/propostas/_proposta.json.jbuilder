json.extract! proposta, :id, :nome, :descricao, :valor, :inicio, :fim, :cidade_id, :created_at, :updated_at
json.url proposta_url(proposta, format: :json)
