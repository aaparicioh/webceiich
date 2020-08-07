json.extract! publicacion, :id, :libro_id, :programa_id, :created_at, :updated_at
json.url publicacion_url(publicacion, format: :json)
