class MakeChangesToProducts < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :price, :decimal, precision: 6, scale: 2

    add_column :products, :count, :integer
  end
end
