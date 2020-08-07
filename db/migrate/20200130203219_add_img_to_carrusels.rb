class AddImgToCarrusels < ActiveRecord::Migration[5.2]
  def self.up
      change_table :carrusels do |t|
        t.attachment :img
      end
    end

    def self.down
      remove_attachment :carrusels, :img
    end
end
