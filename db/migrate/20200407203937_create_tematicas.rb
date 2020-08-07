class CreateTematicas < ActiveRecord::Migration[5.2]
  def change
    create_table :tematicas do |t|
      t.string :tematica

      t.timestamps
    end
  end
end
