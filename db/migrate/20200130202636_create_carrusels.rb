class CreateCarrusels < ActiveRecord::Migration[5.2]
  def change
    create_table :carrusels do |t|
      t.string :imagen
      t.string :url

      t.timestamps
    end
  end
end
