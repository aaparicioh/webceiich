class AddTematicaToLibro < ActiveRecord::Migration[5.2]
  def change
    add_reference :libros, :tematica, foreign_key: true
  end
end
