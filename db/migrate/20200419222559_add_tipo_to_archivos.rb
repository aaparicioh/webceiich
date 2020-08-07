class AddTipoToArchivos < ActiveRecord::Migration[5.2]
  def change
    add_reference :archivos, :tipo_archivo, foreign_key: true
  end
end
