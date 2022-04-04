class AddQuantityToSelectedProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :selected_products, :quantity, :integer
  end
end
