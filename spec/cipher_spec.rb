require './cipher'

describe "#caesar_cipher" do
  it "shifts each letter the required number of positions" do
    expect(caesar_cipher("hello",3)).to eql("khoor")
  end

  it "wraps from z to a" do
    expect(caesar_cipher("zorg",3)).to eql("cruj")
  end

  it "retains upper and lower case letters" do
    expect(caesar_cipher("Hello",3)).to eql("Khoor")
  end

  it "retains spaces and other symbols" do
    expect(caesar_cipher("What a string!",5)).to eql("Bmfy f xywnsl!")
  end
end