class AddPublicacionToPublicacion < ActiveRecord::Migration[5.2]
  def change
    add_reference :publicaciones, :libro, foreign_key: true
  end
end
