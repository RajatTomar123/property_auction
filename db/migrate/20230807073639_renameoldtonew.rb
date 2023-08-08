class Renameoldtonew < ActiveRecord::Migration[7.0]
  def change
    rename_column :properties, :users_id, :seller_id
  end
end
