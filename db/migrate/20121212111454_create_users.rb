class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :intro
      t.string :email
      t.date :birthday
      t.string :rank_id
      t.boolean :is_enabled
      t.timestamps
    end
  end
end
