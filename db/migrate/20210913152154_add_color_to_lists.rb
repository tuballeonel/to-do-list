class AddColorToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :color, :string
  end
end
