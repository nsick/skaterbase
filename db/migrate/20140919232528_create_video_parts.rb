class CreateVideoParts < ActiveRecord::Migration
  def change
    create_table :video_parts do |t|
      #t.integer :skater_id
      #t.integer :skate_video_id
      t.time :runtime
      t.string :artist
      t.string :song

      # these are the integer columns for the foreign key
      t.references :skater, index: true
      # t.references :skate_video, index: true

      t.timestamps
    end
  end
end
