json.extract! departamento, :id, :nombre, :foto, :descripcion, :created_at, :updated_at
json.url departamento_url(departamento, format: :json)
