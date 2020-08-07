class CreateProgramas < ActiveRecord::Migration[5.2]
  def change
    create_table :programas do |t|
      t.string :nombre
      t.string :foto
      t.string :descripcion

      t.timestamps
    end
  end
end
