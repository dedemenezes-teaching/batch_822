require_relative 'patient'

class Room
  # STATE
  # capacity => Integer
  attr_accessor :id
  attr_reader :patients

  def initialize(attributes = {})
    @id       = attributes[:id]
    @capacity = attributes[:capacity] #=> Integer
    @patients = attributes[:patients] || [] #=> array instances of patients
  end

  def add_patient(patient)
    # self is the room on which .add_patient was called
    if full?
      raise Exception, "No more space in this room"
    else
      @patients << patient
      patient.room = self
    end
  end

  # ask the room if it's full
  def full?
    @capacity == @patients.length
  end
end

room_1 = Room.new(capacity: 2)

mariana = Patient.new(
  name: "Mariana",
  illness: "Fever"
)

julia = Patient.new(
  name: "Julia",
  cured: true
)

mage = Patient.new

room_1.add_patient(mariana)
room_1.add_patient(julia)
