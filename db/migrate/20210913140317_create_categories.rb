class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :status
      t.string :color
      t.string :icone
      t.string :name

      t.timestamps
    end
  end
end
