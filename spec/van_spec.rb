require 'van'

describe Van do
  describe '#take_broken_bikes_from' do
    let(:station) {double :station}
    it 'takes broken bikes from station' do
      allow(station).to receive(:bikes).and_return(["bike1",'bike2','bike3'])
      expect(subject.take_broken_bikes_from(station)).to be_a Array
    end
  end
end
