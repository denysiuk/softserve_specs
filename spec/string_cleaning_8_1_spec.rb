require './lib/string_cleaning_8_1.rb'

describe "#string_clean" do
  it "does not remove blank spaces" do
    expect(string_clean("")).to eql("")
  end

  it "does not remove white spaces" do
    expect(string_clean(" ")).to eql(" ")
  end

  it "does not remove punctuation marks" do
    expect(string_clean(". , ? !")).to eql(". , ? !")
  end

  it "removes numbers" do
    expect(string_clean("(H123ello th666e69re!)")).to eql("(Hello there!)")
  end

  it "does not remove special characters" do
    expect(string_clean("hello@softserve.com")).to eql("hello@softserve.com")
    expect(string_clean("!@#$%^&*()_+")).to eql("!@#$%^&*()_+")
  end
end