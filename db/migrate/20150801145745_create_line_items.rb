class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.belongs_to :product
      t.belongs_to :order
      t.integer :quantity
      t.integer :price_at_time_of_selection
    end
  end
end
