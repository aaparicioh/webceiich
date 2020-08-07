class CreatePrincipalelements < ActiveRecord::Migration[5.2]
  def change
    create_table :principalelements do |t|
      t.string :urlImg
      t.string :urlVideo

      t.timestamps
    end
  end
end
