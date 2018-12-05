class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :classroom
      t.text :time
      t.integer :user_id
      # 처음엔 0, 만약 수락된다면 1이고 거절당하면 2의 상태가 된다.
      t.integer :status
      t.timestamps null: false
    end
  end
end
