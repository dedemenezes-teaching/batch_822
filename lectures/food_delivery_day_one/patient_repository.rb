require 'pry-byebug'
require 'csv'
require_relative 'patient'
require_relative 'room_repository'

class PatientRepository
  def initialize(csv_file_path, room_repository)
    @csv_file_path = csv_file_path
    @room_repository = room_repository
    @patients = []
    load_csv
  end

  def all
    @patients
  end

  # >> !!TODAY YOU'RE GONNA USE THIS!! <<
  def add_patient(patient)
    # If my @patients is empty: id should be 1
    # If @patients has 10 patients: id should be 11
    patient.id = @patients.empty? ? 1 : @patients.last.id + 1
    @patients << patient
    save_csv
  end

  private
  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      # Write the headers first
      csv << ["id","name","illness","cured","blood_type","room_id"]

      @patients.each do |patient|
        # Respect the order of the headers
        csv << [
          patient.id, patient.name, patient.illness, patient.cured?, patient.blood_type, patient.room.id
        ]
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == "true"
      # Deserializing from room_id to an actual room instance
      row[:room] = @room_repository.find(row[:room_id].to_i)

      @patients << Patient.new(row)
    end
  end
end
