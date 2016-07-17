class AddColumnToPics < ActiveRecord::Migration
  def change
    add_column :pics, :name, :string
  end
end
