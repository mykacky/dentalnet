class RemoveIdToHospitals < ActiveRecord::Migration
  def change
    remove_column :hospitals, :id, :string
  end
end
