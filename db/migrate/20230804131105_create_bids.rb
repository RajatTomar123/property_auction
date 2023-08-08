class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.integer :property_id
      t.integer :bidder_id
      t.decimal :amount

      t.timestamps
    end

    add_foreign_key :bids, :properties, column: :property_id
    add_foreign_key :bids, :users, column: :bidder_id
  end
end
