class CreateUsers < ActiveRecord::Migration
  def change
    create_table  :users do |t|
      t.integer   :user_id
      t.string    :user_pic
      t.datetime  :create_date
      t.timestamp :update_date
    end
  end
end
