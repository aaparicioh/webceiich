class CreateRevistas < ActiveRecord::Migration[5.2]
  def change
    create_table :revistas do |t|

      t.timestamps
    end
  end
end
