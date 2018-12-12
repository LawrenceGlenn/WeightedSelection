RSpec.describe WeightedSelection do
  it "has a version number" do
    expect(WeightedSelection::VERSION).not_to be nil
  end

  it "makes selection from 1 item with weight of 1" do
    expect(WeightedSelection.choose({item: 1})).to eq(:item)
  end

  it "makes selection from 1 item with weight of 2" do
    expect(WeightedSelection.choose({item: 2})).to eq(:item)
  end

  it "makes selection from 2 item with equal weight" do
    expect(WeightedSelection.choose({item1: 1, item2: 1})).to eq(:item1).or eq(:item2)
  end

  it "makes selection from 2 item with unequal weight" do
    expect(WeightedSelection.choose({item1: 1, item2: 4})).to eq(:item1).or eq(:item2)
  end

end
