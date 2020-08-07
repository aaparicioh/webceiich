class AddCamposToRevistas < ActiveRecord::Migration[5.2]
  def change
    add_column :revistas, :coleccion, :string
    add_column :revistas, :descripcion, :string
  end
end
