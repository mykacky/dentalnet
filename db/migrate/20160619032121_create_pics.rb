class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.integer     :dental_id
      t.string      :dental_pic
      t.text        :dental_piccomment
      t.datetime    :create_date
      t.timestamp   :update_date
    end
  end
end
