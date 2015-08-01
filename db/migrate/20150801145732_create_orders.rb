class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :filled_at
      t.belongs_to :user
    end
  end
end
