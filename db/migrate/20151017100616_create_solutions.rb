class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.integer :user_id
      t.integer :error_message_id
      t.text :solution
      t.integer :good

      t.timestamps null: false
    end
  end
end
