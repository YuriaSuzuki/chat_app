class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :status
      t.text :profile_picture
      t.datetime :last_access

      t.timestamps null: false
    end
  end
end
