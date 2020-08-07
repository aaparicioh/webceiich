json.extract! event, :id, :titulo, :fecha_inicial, :fecha_final, :hora_inicial, :hora_final, :lugar, :coordinacion, :participantes, :moderador, :transmision_vivo, :informes, :programa, :tipo, :colaboracion, :temas, :informacion, :programa_completo, :subtitulo, :created_at, :updated_at, :ocurrencia
json.url event_url(event, format: :json)

#json.array!(@events) do |event|
#  json.extract! event, :id, :titulo, :fecha_inicial, :fecha_final, :hora_inicial, :lugar, :hora_final, :coordinacion, :participantes, :moderador, :transmision_vivo, :informes, :programa, :tipo, :colaboracion, :temas, :extra, :programa_completo, :subtitulo, :created_at, :updated_at, :ocurrencia

#  json.title "#{event.lugar}"
#  json.id "#{event.id}"
#  json.start "#{event.fecha_inicial}"
#  json.end "#{event.fecha_final}"
#  json.description "#{event.lugar}"
#end
