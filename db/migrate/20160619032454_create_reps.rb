class CreateReps < ActiveRecord::Migration
  def change
    create_table :reps do |t|
      t.integer   :dental_id
      t.text      :rep_name
      t.string    :rep_photo
      t.text      :rep_comment
      t.text      :rep_career
      t.datetime  :create_date
      t.timestamp :update_date
    end
  end
end
