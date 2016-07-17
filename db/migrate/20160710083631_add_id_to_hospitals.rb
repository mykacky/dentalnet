class AddIdToHospitals < ActiveRecord::Migration
  def change
    add_column :hospitals, :id, :primary_key
  end
end
