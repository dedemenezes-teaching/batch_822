require_relative '../citizen.rb'

describe Citizen do
  context "#can_vote?" do
    it "return true if the citizen is 18 years old or more" do
      andre = Citizen.new("andre", "menezes", 18)

      expect(andre.can_vote?).to be true
    end
    it "returns false if the citizen is 17 yrs old or less"do
      andre = Citizen.new("andre", "menezes", 17)
      expect(andre.can_vote?).to be false
    end
  end

  context "#full_name" do
    it "returns the first and last name concatenated and capitalized" do
      andre = Citizen.new("andre", "menezes", 33)
      expect(andre.full_name).to eq("Andre Menezes")
    end
  end
end
