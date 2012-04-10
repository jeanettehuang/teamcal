class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :endtime
      t.boolean :repeat
      t.boolean :daily
      t.boolean :weekly
      t.boolean :monthly

      t.timestamps
    end
  end
end
