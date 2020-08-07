class ChangeFuenteToArchivos < ActiveRecord::Migration[5.2]
  def up
  change_column :archivos, :fuente, :text
end

def down
  change_column :archivos, :fuente, :string
end
end
