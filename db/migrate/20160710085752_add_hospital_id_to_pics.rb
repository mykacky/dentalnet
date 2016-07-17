class AddHospitalIdToPics < ActiveRecord::Migration
  def change
    add_column :pics, :hospital_id, :integer
  end
end
