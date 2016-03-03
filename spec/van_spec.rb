require 'van'
require 'dockingstation'

describe Van do
  describe '#take_broken_bikes_from' do
    # let(:station) {double :station}
    # let(:bike) {double :bike}
    it 'takes bikes from station' do
      # allow(bike).to receive(:broken).and_return(false)
      # allow(station).to receive(:dock_bike)(1).argument.and_return
      # allow(station).to receive(:bikes).and_return(["bike1",'bike2','bike3'])

      station = DockingStation.new
      11.times {station.dock_bike(Bike.new)}
      expect(subject.take_broken_bikes_from(station)).to be_a Array
    end

    it 'takes no bikes if all working' do
      station = DockingStation.new
      11.times {station.dock_bike(Bike.new)}
      expect(subject.take_broken_bikes_from(station)).to eq []

    end

  #   it 'takes broken bikes'
  #     allow(station).to receive(:bikes).and_return(["bike1",'bike2','bike3'])
  #     expect(subject.take_broken_bikes_from(station))
  end
end
