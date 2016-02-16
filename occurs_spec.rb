require 'rspec'
require './occurs'

# Does an element occur in a list?

describe '#occurs?' do
  it 'handles an empty array' do
    expect(occurs?([], 1)).to eq false
  end

end
