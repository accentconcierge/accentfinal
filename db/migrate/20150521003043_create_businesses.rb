class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :companyname
      t.string :telephone
      t.string :email
      t.string :website
      t.string :address
      t.boolean :active
      t.integer :rating

      t.timestamps null: false
    end
  end
end
