class RemoveIdFromHospitals < ActiveRecord::Migration
  def change
    remove_column :hospitals, :id, :integer
  end
end
