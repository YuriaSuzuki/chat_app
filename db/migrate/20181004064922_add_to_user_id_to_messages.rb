class AddToUserIdToMessages < ActiveRecord::Migration
  def change
    add_reference :messages, :to_user, foreign_key: { to_table: :users }
  end
end
