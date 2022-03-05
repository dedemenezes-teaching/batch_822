class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :name, presence: true, length: { minimum: 3 }
end
