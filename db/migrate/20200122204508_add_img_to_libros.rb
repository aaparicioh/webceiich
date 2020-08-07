class AddImgToLibros < ActiveRecord::Migration[5.2]
  def self.up
    change_table :libros do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :libros, :img
  end
end
