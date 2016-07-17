class AddHospitalIdToReps < ActiveRecord::Migration
  def change
    add_column :reps, :hospital_id, :integer
  end
end
