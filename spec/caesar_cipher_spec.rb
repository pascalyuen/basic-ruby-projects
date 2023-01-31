require './project-caesar-cipher.rb'

describe "#caesar_cipher" do
  it "returns lowercase letters" do
    expect(caesar_cipher("bee", 1)).to eql("cff")
  end

  it "returns uppercase letters" do
    expect(caesar_cipher("BEE", 1)).to eql("CFF")
  end

  it "wraps from z to a" do
    expect(caesar_cipher("zoo", 1)).to eql("app")
  end

  it "works with a negative shift factor" do
    expect(caesar_cipher("bee", -1)).to eql("add")
  end

  it "works with a phrase with punctuation" do
    expect(caesar_cipher("Hello, World!", 2)).to eql("Jgnnq, Yqtnf!")
  end
end