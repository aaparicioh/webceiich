class AddEventRefToCarrusels < ActiveRecord::Migration[5.2]
  def change
    add_reference :carrusels, :event, foreign_key: true
  end
end
