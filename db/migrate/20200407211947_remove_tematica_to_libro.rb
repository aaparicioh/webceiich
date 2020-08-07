class RemoveTematicaToLibro < ActiveRecord::Migration[5.2]
  def change
       remove_column :libros, :tematica, :string
     end
end
