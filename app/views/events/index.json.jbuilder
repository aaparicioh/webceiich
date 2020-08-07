#json.array! @events, partial: "events/event", as: :event#
#json.partial! @events, partial: "events/event", as: :event
#json.partial! @events,              partial: 'recurring_events/recurring_event',              as: :recurring_event
#json.array!(@events) do |event|
#  json.title "#{event.titulo}"
#  json.id "#{event.id}"
#  json.start event.fecha_inicial
#  json.end event.fecha_final

#end
json.array!(@events) do |event|
  json.extract! event, :id, :titulo, :fecha_inicial, :fecha_final, :hora_inicial, :lugar, :hora_final, :coordinacion, :participantes, :moderador, :transmision_vivo, :informes, :programa, :tipo, :colaboracion, :temas, :informacion, :programa_completo, :subtitulo, :created_at, :updated_at, :ocurrencia,:img, :actividades_internas
  json.title "#{event.titulo}"
  json.id "#{event.id}"
  json.start "#{event.fecha_inicial}"
  json.end "#{event.fecha_final}"

end
