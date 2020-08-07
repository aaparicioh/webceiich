class AddTematicaToLibros < ActiveRecord::Migration[5.2]
  def change
    add_column :libros, :tematica, :string
  end
end
