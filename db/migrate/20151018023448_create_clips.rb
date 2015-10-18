class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.integer :user_id
      t.integer :error_message_id

      t.timestamps null: false
    end
  end
end
