class RemoveIdFromReps < ActiveRecord::Migration
  def change
    remove_column :reps, :id, :integer
  end
end
