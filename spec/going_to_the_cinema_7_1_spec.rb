require './lib/going_to_the_cinema_7_1.rb'

describe "#movie" do
  it "returns minimum number of visits for discount" do
    expect(movie(500, 15, 0.9)).to eql(43)
    expect(movie(100, 10, 0.95)).to eql(24)
    expect(movie(250, 10, 0.8)).to eql(30)
    expect(movie(300, 25, 0.9)).to eql(20)
    expect(movie(418, 18, 0.69)).to eql(26)
  end
end