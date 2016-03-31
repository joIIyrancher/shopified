class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :description
      t.integer :price
      t.string :photo
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
