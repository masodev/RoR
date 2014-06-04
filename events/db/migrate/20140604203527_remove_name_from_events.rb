class RemoveNameFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :start_at, :datetime
  end
end
