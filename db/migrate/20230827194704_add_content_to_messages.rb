class AddContentToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :content, :text
  end
end
