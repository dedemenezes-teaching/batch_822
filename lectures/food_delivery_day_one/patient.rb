class Patient
  # STATE/PROPERTIES
  # Name => String
  # Illness => String
  # Cured => Boolean
  attr_reader :name, :illness, :blood_type

  attr_accessor :room, :id
  def initialize(attributes = {})
    @id         = attributes[:id]
    @name       = attributes[:name]
    @cured      = attributes[:cured] || false
    @illness    = attributes[:illness]
    @blood_type = attributes[:blood_type] || "A"
    @room       = attributes[:room]
  end

  # Behaviour
  def cured?
    @cured
  end

  def cure!
    @cured = true
  end
end
