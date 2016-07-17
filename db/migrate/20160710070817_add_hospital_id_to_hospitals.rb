class AddHospitalIdToHospitals < ActiveRecord::Migration
  def change
    add_column :hospitals, :hospital_id, :integer
  end
end
