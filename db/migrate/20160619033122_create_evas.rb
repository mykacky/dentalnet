class CreateEvas < ActiveRecord::Migration
  def change
    create_table :evas do |t|
      t.integer     :dental_id
      t.integer     :user_id
      t.text        :user_comment
      t.integer     :evaluation
      t.boolean     :likeit
      t.boolean     :go_want
      t.datetime    :create_date
      t.timestamp   :update_date
    end
  end
end
