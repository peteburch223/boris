require 'van'

require 'bikecontainer_spec'

describe Van do
  it {expect(subject).to respond_to(:load).with(1).argument }
  it {expect(subject).to respond_to :unload}

  it_behaves_like "bike container"

end
