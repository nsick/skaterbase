class AddBirthYearToSkater < ActiveRecord::Migration
  def change
    add_column :skaters, :birthyear, :integer
  end
end
