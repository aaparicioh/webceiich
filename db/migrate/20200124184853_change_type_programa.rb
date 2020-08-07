class ChangeTypePrograma < ActiveRecord::Migration[5.2]
  def up
    change_table :programas do |t|
      t.change :descripcion, :text
    end
  end

  def down
    change_table :programas do |t|
      t.change :descripcion, :string
    end
  end
end
