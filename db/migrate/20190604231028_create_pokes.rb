class CreatePokes < ActiveRecord::Migration[5.2]
  def change
    create_table :pokes do |t|
      t.string :name
      t.string :location
      t.string :found

      t.timestamps
    end
  end
end
