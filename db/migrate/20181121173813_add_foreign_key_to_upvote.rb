class AddForeignKeyToUpvote < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :upvotes, :alarm
  end
end
