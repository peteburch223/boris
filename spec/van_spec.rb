require 'van'

describe Van do
  it {expect(subject).to respond_to :load }
  it {expect(subject).to respond_to :unload}
end
