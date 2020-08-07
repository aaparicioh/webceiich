class RemoveExtraFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :extra, :string
  end
end
