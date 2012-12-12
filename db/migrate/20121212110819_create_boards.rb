class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.text :intro
      t.integer :user_id
      t.integer :sort
      t.boolean :is_enabled
      t.timestamps
    end
  end
end
