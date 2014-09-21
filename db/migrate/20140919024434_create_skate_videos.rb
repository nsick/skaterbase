class CreateSkateVideos < ActiveRecord::Migration
  def change
    create_table :skate_videos do |t|
      t.string :videoname
      t.integer :videoyear
      t.string :videocompany

      t.timestamps
    end
  end
end
