class AddLinkToRevistas < ActiveRecord::Migration[5.2]
  def change
    add_column :revistas, :link, :string
  end
end
