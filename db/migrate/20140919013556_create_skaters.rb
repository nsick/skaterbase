class CreateSkaters < ActiveRecord::Migration
  def change
    create_table :skaters do |t|
      t.string :fname
      t.string :lname
      t.date :dob
      t.string :city
      t.integer :state
      t.string :country
      t.integer :stance
      t.integer :status
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
