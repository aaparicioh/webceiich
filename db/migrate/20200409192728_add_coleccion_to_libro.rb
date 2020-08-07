class AddColeccionToLibro < ActiveRecord::Migration[5.2]
  def change
    add_reference :libros, :coleccion, foreign_key: true
  end
end
