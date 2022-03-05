class CreateConsultations < ActiveRecord::Migration[6.0]
  create_table :consultations do |t|
    t.references :doctor, foreign_key: true
    t.references :patient, foreign_key: true

    t.timestamps
  end
end
