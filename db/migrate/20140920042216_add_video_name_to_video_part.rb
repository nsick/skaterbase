class AddVideoNameToVideoPart < ActiveRecord::Migration
  def change
    add_column :video_parts, :videoname, :string
  end
end
