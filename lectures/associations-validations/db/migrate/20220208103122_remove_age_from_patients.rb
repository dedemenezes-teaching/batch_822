class RemoveAgeFromPatients < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :age
  end
end
