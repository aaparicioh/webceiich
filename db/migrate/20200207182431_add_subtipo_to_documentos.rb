class AddSubtipoToDocumentos < ActiveRecord::Migration[5.2]
  def change
    add_column :documentos, :subtipo, :string
  end
end
