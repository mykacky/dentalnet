class RemoveDentalIdToPics < ActiveRecord::Migration
  def change
    remove_column :pics, :dental_id, :string
  end
end
