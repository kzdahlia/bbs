class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.string :name
      t.integer :sort
      t.boolean :is_enabled
      t.timestamps
    end
  end
end
