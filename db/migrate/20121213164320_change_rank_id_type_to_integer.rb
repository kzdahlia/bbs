class ChangeRankIdTypeToInteger < ActiveRecord::Migration
  def up
    change_column :users, :rank_id, :integer
  end

  def down
  end
end
