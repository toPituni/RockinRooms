class AddColumnsToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :name, :string
    add_column :rooms, :description, :string
  end
end
