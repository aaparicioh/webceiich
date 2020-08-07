class AddPermissionToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :permission_level, :integer
  end
end
