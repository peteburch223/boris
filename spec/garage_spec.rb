require 'garage'

describe Garage do
  it {expect(subject).to respond_to(:store).with(1).argument }
  it {expect(subject).to respond_to :release_bike}
  describe '#store' do
    let (:bike) {double(:bike)}
    it 'adds bike to garage' do
      bike_count = subject.bikes.count
      subject.store(bike)
      expect(subject.bikes.count).to eq bike_count+1
    end
  end
  describe '#release_bike' do
    let (:bike) {double(:bike)}
    it 'unloads a bike' do
      subject.store(bike)
      bike_count = subject.bikes.count
      subject.release_bike
      expect(subject.bikes.count).to eq bike_count-1
    end

    it 'expects error when no bikes' do
        expect {subject.release_bike}.to raise_error('Garage empty')
    end

  end


end
