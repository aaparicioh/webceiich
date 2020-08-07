class CreateArchivos < ActiveRecord::Migration[5.2]
  def change
    create_table :archivos do |t|
      t.string :titulo
      t.date :fecha
      t.string :fuente

      t.timestamps
    end
  end
end
