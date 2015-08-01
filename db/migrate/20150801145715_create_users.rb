class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :digest
      t.string :address_1
      t.string :address_2
      t.string :suburb
      t.string :city
      t.integer :post_code
      t.string :phone
      t.date :created_on
    end
  end
end
