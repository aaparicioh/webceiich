class CreateArchivofotograficos < ActiveRecord::Migration[5.2]
  def change
    create_table :archivofotograficos do |t|
      t.string :titulo
      t.string :descripcion
      t.string :anio
      t.string :encargado

      t.timestamps
    end
  end
end
