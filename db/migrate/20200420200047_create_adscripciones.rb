class CreateAdscripciones < ActiveRecord::Migration[5.2]
  def change
    create_table :adscripciones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
