class RemoveIdToReps < ActiveRecord::Migration
  def change
    remove_column :reps, :id, :string
  end
end
