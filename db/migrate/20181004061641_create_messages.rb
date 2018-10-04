class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :contents
      t.references :user, index: true, foreign_key: true
      t.datetime :timestamp

      t.timestamps null: false
    end
  end
end
