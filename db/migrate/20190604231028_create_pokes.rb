class CreatePokes < ActiveRecord::Migration[5.2]
  def change
    create_table :pokes do |t|
      t.string :name
      t.string :location
      t.string :found
      t.integer :likes, default: 0
      t.integer :user_id

      t.timestamps
    end
  end
end
