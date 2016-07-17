class RemoveDentalIdFromReps < ActiveRecord::Migration
  def change
    remove_column :reps, :dental_id, :integer
  end
end
