class ChangeDescripcionInDepartamentos < ActiveRecord::Migration[5.2]
  def up
  change_column :departamentos, :descripcion, :text
end

def down
  change_column :departamentos, :descripcion, :string
end
end
