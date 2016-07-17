class AddIdToReps < ActiveRecord::Migration
  def change
    add_column :reps, :id, :primary_key
  end
end
