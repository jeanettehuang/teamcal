class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.integer :numberbusy

      t.timestamps
    end
  end
end
