class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :post_id
      t.text :quote
      t.text :content
      t.integer :user_id
      t.integer :sort
      t.boolean :is_enabled
      t.timestamps
    end
  end
end
