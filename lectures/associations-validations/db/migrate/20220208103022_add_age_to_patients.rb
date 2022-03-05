class AddAgeToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :age, :integer
  end
end
