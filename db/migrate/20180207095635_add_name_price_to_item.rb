class AddNamePriceToItem < ActiveRecord::Migration
  def change
    add_column :items, :category_id, :integer
    add_column :items, :name, :string
    add_column :items, :price, :integer
    add_column :items, :default, :integer
  end
end
