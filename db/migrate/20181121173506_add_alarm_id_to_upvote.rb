class AddAlarmIdToUpvote < ActiveRecord::Migration[5.2]
  def change
    add_column :upvotes, :alarm_id, :integer
  end
end
