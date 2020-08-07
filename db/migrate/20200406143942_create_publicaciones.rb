class CreatePublicaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :publicaciones do |t|

      t.timestamps
    end
  end
end
