class AddInformacionExtraToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :informacion, :text
  end
end
