class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.references :users, column: :seller_id, foreign_key: true
      t.string :status, default: 'AVAILABLE'
      t.timestamps
    end
  end
end
