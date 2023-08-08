class Removereffromproperties < ActiveRecord::Migration[7.0]
  def change
    remove_reference :properties, :users, index: true, foreign_key: true, column: :users_id
    add_reference :properties, :users, column: :seller_id, foreign_key: true, index: true
  end
end
