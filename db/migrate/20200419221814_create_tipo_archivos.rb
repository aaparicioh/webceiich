class CreateTipoArchivos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_archivos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
