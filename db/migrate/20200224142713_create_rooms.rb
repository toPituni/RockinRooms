class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :address
      t.string :district
      t.string :equipment
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
