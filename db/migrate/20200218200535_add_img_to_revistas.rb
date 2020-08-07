class AddImgToRevistas < ActiveRecord::Migration[5.2]
  def self.up
      change_table :revistas do |r|
        r.attachment :img
      end
    end

    def self.down
      remove_attachment :revistas, :img
    end
end
