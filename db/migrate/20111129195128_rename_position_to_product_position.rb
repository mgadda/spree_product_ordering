class RenamePositionToProductPosition < ActiveRecord::Migration
  def up
    rename_column :products, :position, :product_position
  end

  def down
    rename_column :products, :product_position, :position
  end
end
