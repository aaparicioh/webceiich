class CreateColeccions < ActiveRecord::Migration[5.2]
  def change
    create_table :coleccions do |t|
      t.string :coleccion

      t.timestamps
    end
  end
end
