class CreateDocumentos < ActiveRecord::Migration[5.2]
  def change
    create_table :documentos do |t|
      t.string :nombre
      t.string :tipo
      t.string :anio

      t.timestamps
    end
  end
end
