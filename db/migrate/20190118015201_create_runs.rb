class CreateRuns < ActiveRecord::Migration[5.2]
  def change
    create_table :runs do |t|
      t.decimal :distance
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
  end
end
