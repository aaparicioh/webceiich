class CreateMedioVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :medio_videos do |t|
      t.string :url
      t.date :fecha

      t.timestamps
    end
  end
end
