class AddColunmPriceToPics < ActiveRecord::Migration
  def change
    add_column :pics, :price, :integer
  end
end
