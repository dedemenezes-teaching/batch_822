class CreateInterns < ActiveRecord::Migration[6.0]
  def change
    create_table :interns do |t|
      t.string :name
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
