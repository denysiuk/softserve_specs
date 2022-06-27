require './lib/what_is_between_8_2.rb'

describe "#between" do
  it "returns positive numbers" do
    expect(between(1, 4)).to eql([1, 2, 3, 4])
  end

  it "returns negative numbers" do
    expect(between(-9, -2)).to eql([-9, -8, -7, -6, -5, -4, -3, -2])
  end

  it "returns positive negative numbers" do
    expect(between(-2, 2)).to eql([-2, -1, 0, 1, 2])
  end

  it "return one number when given the same number" do
    expect(between(3, 3)).to eql([3])
  end

  it "return empty array when starting with higher number" do
    expect(between(4, 1)).to eql([])
  end
end