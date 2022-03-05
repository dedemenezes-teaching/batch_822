require_relative 'patient'
require_relative 'room'
require_relative 'patient_repository'
require_relative 'room_repository'

room_repository = RoomRepository.new('rooms.csv')
patient_repository = PatientRepository.new('patients.csv', room_repository)

# This is commented because if it was not everytime that we execute this code it would create and add luca to the same room
# room_2 = room_repository.find(2)
# luca = Patient.new(name: "Luca", illness: "Lateness")
# room_2.add(luca)
# patient_repository.add_patient(luca)

patient_repository.all.each do |patient| #Method all return the patients array
  puts "#{patient.id} - #{patient.name} -> Room: #{patient.room.id}"
end

p patient_repository.all.first.room
