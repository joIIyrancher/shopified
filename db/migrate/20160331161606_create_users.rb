class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :country
      t.string :photo
      t.boolean :admin
      t.integer :wallet
      t.integer :seller_rating
      t.integer :buyer_rating

      t.timestamps null: false
    end
  end
end
