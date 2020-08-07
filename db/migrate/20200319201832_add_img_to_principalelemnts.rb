class AddImgToPrincipalelemnts < ActiveRecord::Migration[5.2]
  def self.up
      change_table :principalelements do |pe|
        pe.attachment :img
      end
    end

    def self.down
      remove_attachment :principalelements, :img
    end
end
