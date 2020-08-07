class AddUrlToLibros < ActiveRecord::Migration[5.2]
  def change
    add_column :libros, :url, :string
  end
end
