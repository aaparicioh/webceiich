class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :titulo
      t.date :fecha_inicial
      t.date :fecha_final
      t.time :hora_inicial
      t.time :hora_final
      t.string :lugar
      t.string :coordinacion
      t.text :participantes
      t.string :moderador
      t.string :transmision_vivo
      t.string :informes
      t.string :programa
      t.string :tipo
      t.string :colaboracion
      t.string :temas
      t.string :extra
      t.string :programa_completo
      t.string :subtitulo

      t.timestamps
    end
  end
end
