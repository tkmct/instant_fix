class AddKnowledgesToErrorMessage < ActiveRecord::Migration
  def change
  	add_column :error_messages, :knowledge, :text
  end
end
