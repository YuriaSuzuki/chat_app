class RenameUserIdToFromUserId < ActiveRecord::Migration
  def change
    rename_column :messages, :user_id, :from_user_id
  end
end
