class CreateEarnedBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :earned_books do |t|
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
