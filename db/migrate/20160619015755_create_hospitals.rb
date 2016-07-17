class CreateHospitals < ActiveRecord::Migration
  def change
   create_table :hospitals do |t|
      t.integer  :id
      t.integer  :hospital_id
      t.text      :dental_name
      t.text      :zip
      t.text      :region
      t.text      :city
      t.text      :address
      t.text      :building
      t.text      :tel
      t.text      :website
      t.boolean   :mon_am
      t.boolean   :mon_pm
      t.boolean   :tue_am
      t.boolean   :tue_pm
      t.boolean   :wed_am
      t.boolean   :wed_pm
      t.boolean   :thu_am
      t.boolean   :thu_pm
      t.boolean   :fri_am
      t.boolean   :fri_pm
      t.boolean   :sat_am
      t.boolean   :sat_pm
      t.boolean   :sun_am
      t.boolean   :sun_pm
      t.text      :time_other
      t.boolean   :genre_waittime
      t.boolean   :genre_bridge
      t.boolean   :genre_whitening
      t.boolean   :genre_cleaning
      t.boolean   :genre_implant
      t.boolean   :genre_cosmetic
      t.boolean   :genre_denture
      t.boolean   :genre_ceramic
      t.boolean   :genre_root
      t.boolean   :genre_short
      t.boolean   :genre_second
      t.boolean   :genre_anesthesia
      t.boolean   :genre_correction
      t.boolean   :genre_child
      t.boolean   :facility_large
      t.boolean   :facility_emergency
      t.boolean   :facility_kids
      t.boolean   :facility_visit
      t.boolean   :facility_ct
      t.boolean   :facility_online
      t.boolean   :pr
      t.datetime  :create_date
      t.timestamp :update_date
    end
  end
end