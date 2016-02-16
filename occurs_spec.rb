require 'rspec'
require './occurs'

# Does an element occur in a list?

describe '#occurs?' do
  it 'handles an empty array' do
    expect(occurs?([], 1)).to eq false
  end

  it 'handles a single-entry array' do
    expect(occurs?([1], 1)).to eq true
  end

  it 'does not give a false positive' do
    expect(occurs?([2], 1)).to eq false
  end

  it 'handles a multi-entry array' do
    expect(occurs?([1, 2, 3], 1)).to eq true
  end

  it 'does not give a false positive with multiple entries' do
    expect(occurs?([2, 3, 4], 1)).to eq false
  end
end
