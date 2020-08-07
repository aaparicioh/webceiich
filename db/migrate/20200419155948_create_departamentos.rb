class CreateDepartamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :departamentos do |t|
      t.string :nombre
      t.string :foto
      t.string :descripcion

      t.timestamps
    end
  end
end
