require './lib/supermarket_queue_6_1.rb'

describe "#queue_time" do
  it "returns 0 if there are no people in the queue" do
    expect(queue_time([], 1)).to eql(0)
    expect(queue_time([], 5)).to eql(0)
    expect(queue_time([], 10)).to eql(0)
  end

  it "returns the number itself for one person" do
    expect(queue_time([3], 1)).to eql(3)
    expect(queue_time([2], 1)).to eql(2)
    expect(queue_time([6], 1)).to eql(6)
  end

  it "returns the number itself for one person and many checkout tills" do
    expect(queue_time([3], 2)).to eql(3)
    expect(queue_time([7], 5)).to eql(7)
    expect(queue_time([1], 3)).to eql(1)
  end

  it "returns the sum of an array for one checkout till" do
    expect(queue_time([1, 2, 3, 4, 5], 1)).to eql(15)
    expect(queue_time([5, 3, 6, 4], 1)).to eql(18)
    expect(queue_time([10, 1, 10, 1], 1)).to eql(22)
  end

  it "returns total max time for > 1 checkout till" do
    expect(queue_time([1, 2, 3, 4, 5], 2)).to eql(9)
    expect(queue_time([5, 3, 6, 4, 7, 2], 2)).to eql(16)
    expect(queue_time([10, 3, 5, 7, 2, 3], 3)).to eql(10)
  end
end