json.extract! documento, :id, :nombre, :tipo, :anio, :created_at, :updated_at
json.url documento_url(documento, format: :json)
