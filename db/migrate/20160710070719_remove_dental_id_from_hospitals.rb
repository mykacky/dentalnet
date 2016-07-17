class RemoveDentalIdFromHospitals < ActiveRecord::Migration
  def change
    remove_column :hospitals, :dental_id, :integer
  end
end
