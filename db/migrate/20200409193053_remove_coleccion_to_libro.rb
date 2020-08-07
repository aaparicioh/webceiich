class RemoveColeccionToLibro < ActiveRecord::Migration[5.2]
  def change
       remove_column :libros, :coleccion, :string
     end
end
