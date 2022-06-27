require "./lib/fibo_akin_5_1.rb"

describe "#length_sup_u_k" do
  it "return correct values" do
    expect(length_sup_u_k(50, 25)).to eql(2)
  end

  it "return correct values" do
    expect(length_sup_u_k(3332, 973)).to eql(1391)
  end
  
  it "return correct values" do
    expect(length_sup_u_k(2941, 862)).to eql(1246)
  end

  it "return correct values" do
    expect(length_sup_u_k(3177, 573)).to eql(2047)
  end

  it "return correct values" do
    expect(length_sup_u_k(1745, 645)).to eql(474)
  end
end

describe "#comp" do
  it "return correct values" do
    expect(comp(74626)).to eql(37128)
  end

  it "return correct values" do
    expect(comp(71749)).to eql(35692)
  end

  it "return correct values" do
    expect(comp(56890)).to eql(28281)
  end

  it "return correct values" do
    expect(comp(60441)).to eql(30054)
  end

  it "return correct values" do
    expect(comp(21361)).to eql(10581)
  end
end
