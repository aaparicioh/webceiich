class CreateMedios < ActiveRecord::Migration[5.2]
  def change
    create_table :medios do |t|
      t.string :nombre
      t.date :fecha

      t.timestamps
    end
  end
end
