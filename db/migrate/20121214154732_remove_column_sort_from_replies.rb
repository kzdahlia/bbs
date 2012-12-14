class RemoveColumnSortFromReplies < ActiveRecord::Migration
  def up
    remove_column :replies, :sort
  end

  def down
  end
end
