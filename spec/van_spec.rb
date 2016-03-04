require 'van'

describe Van do
  it {expect(subject).to respond_to(:load).with(1).argument }
  it {expect(subject).to respond_to :unload}
  describe '#load' do
    let (:bike) {double(:bike)}
    it 'adds bike to van' do
      bike_count = subject.bikes.count
      subject.load(bike)
      expect(subject.bikes.count).to eq bike_count+1
    end
  end
  describe '#unload' do
    let (:bike) {double(:bike)}
    it 'unloads a bike' do
      subject.load(bike)
      bike_count = subject.bikes.count
      subject.unload
      expect(subject.bikes.count).to eq bike_count-1

    end

    it 'expects error when no bikes' do
        expect {subject.unload}.to raise_error('Van empty')
    end

  end


end
