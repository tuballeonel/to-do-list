class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.boolean :status
      t.string :name

      t.timestamps
    end
  end
end
