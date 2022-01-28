class AddPriceToTables < ActiveRecord::Migration[7.0]
  def change
    add_column :tables, :price, :string
  end
end
