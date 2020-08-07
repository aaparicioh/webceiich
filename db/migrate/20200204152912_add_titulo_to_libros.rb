class AddTituloToLibros < ActiveRecord::Migration[5.2]
  def change
    add_column :libros, :titulo, :string
  end
end
