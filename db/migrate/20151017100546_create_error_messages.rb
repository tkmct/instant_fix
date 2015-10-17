class CreateErrorMessages < ActiveRecord::Migration
  def change
    create_table :error_messages do |t|
      t.string :title
      t.text :error_code
      t.text :detail

      t.timestamps null: false
    end
  end
end
