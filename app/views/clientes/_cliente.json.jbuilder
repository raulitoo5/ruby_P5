json.extract! cliente, :id, :nombre, :apellido, :puntos, :correo, :password, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
