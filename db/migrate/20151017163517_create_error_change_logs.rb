class CreateErrorChangeLogs < ActiveRecord::Migration
  def change
    create_table :error_change_logs do |t|
      t.integer :error_message_id
      t.string :title
      t.text :error_code
      t.text :detail
      t.text :knowledge

      t.timestamps null: false
    end
  end
end
