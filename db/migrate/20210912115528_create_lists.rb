class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :status
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
