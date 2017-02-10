class RoomsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms_users, id: false do |t|
      t.integer :user_id, index: true
      t.integer :room_id, index: true

      t.timestamps
    end
  end
end
