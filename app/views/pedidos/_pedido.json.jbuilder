json.extract! pedido, :id, :cliente_id, :total, :estado, :fecha, :linea_pedido_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
