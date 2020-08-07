class RemoveImagenToCarrusels < ActiveRecord::Migration[5.2]
  def change
    remove_column :carrusels, :imagen, :string
  end
end
