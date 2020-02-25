class AddImageToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :image_url, :string
  end
end
