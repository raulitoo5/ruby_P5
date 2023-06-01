json.extract! linea_pedido, :id, :id_pedido, :id_bebida, :cantidad, :created_at, :updated_at
json.url linea_pedido_url(linea_pedido, format: :json)
