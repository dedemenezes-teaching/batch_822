class AddInternReferenceToPatients < ActiveRecord::Migration[6.0]
  def change
    add_reference :patients, :intern, foreign_key: true
  end
end
