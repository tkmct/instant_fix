class AddColumnToError < ActiveRecord::Migration
  def change
  	add_column :error_messages, :user_id, :integer
  end
end
