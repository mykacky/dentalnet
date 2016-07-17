class AddColunmAuthorToPics < ActiveRecord::Migration
  def change
    add_column :pics, :author, :string
  end
end
