class AddTimeToHours < ActiveRecord::Migration
  def change
    add_column :hours, :time, :datetime

  end
end
