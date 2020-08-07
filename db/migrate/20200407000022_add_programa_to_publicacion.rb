class AddProgramaToPublicacion < ActiveRecord::Migration[5.2]
  def change
    add_reference :publicaciones, :programa, foreign_key: true
  end
end
