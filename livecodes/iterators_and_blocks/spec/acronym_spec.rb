require_relative "../acronym_return"

describe " #acronymize" do
  it "returns an empty string when passed an empty string" do
    actual = acronymize("")
    expected = ""
    expect(actual).to eq(expected)
  end

  it "returns the acronym on downcased sentences" do
    actual = acronymize("working from home")
    expected = "WFH"
    expect(actual).to eq(expected)
  end

  it "return the acronym on upcased sentences" do
    actual = acronymize("ALWAYS STRIVE AND PROSPER")
    expected = "ASAP"
    expect(actual).to eq(expected)
  end
end
