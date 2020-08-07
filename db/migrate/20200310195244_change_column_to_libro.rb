class ChangeColumnToLibro < ActiveRecord::Migration[5.2]
  def up
  change_column :libros, :descriptores, :text
end

def down
  change_column :libros, :descriptores, :string
end
end
