json.extract! usuario, :id, :rut, :nombre, :cargo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)