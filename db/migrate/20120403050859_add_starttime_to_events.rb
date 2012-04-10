class AddStarttimeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :starttime, :datetime

  end
end
