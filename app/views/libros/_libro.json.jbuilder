json.extract! libro, :id, :clave, :autor, :coordinador, :coleccion_id, :edicion, :anio, :paginas, :isbn, :descriptores, :precio, :sinopsis, :fecha_publicacion, :created_at, :updated_at, :tematica_id
json.url libro_url(libro, format: :json)
