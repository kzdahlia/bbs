class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :board_id
      t.string :title
      t.text :content
      t.integer :user_id
      t.boolean :is_enabled
      t.timestamps
    end
  end
end
