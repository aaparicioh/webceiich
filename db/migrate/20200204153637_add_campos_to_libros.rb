class AddCamposToLibros < ActiveRecord::Migration[5.2]
  def change
    add_column :libros, :contenido, :text
    add_column :libros, :imagen, :string
  end
end
