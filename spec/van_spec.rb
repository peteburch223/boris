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

    it 'takes only the broken bikes' do
      station = DockingStation.new
      broken_bike = Bike.new
      broken_bike.report_broken
      8.times {station.dock_bike(broken_bike)}
      4.times {station.dock_bike(Bike.new)}
      #var = station.bikes.select { |bike| bike.broken?}
      expect(subject.take_broken_bikes_from(station).size).to eq 8
    end

    it 'expects dockingstation to be left with working bikes' do
      station = DockingStation.new
      broken_bike = Bike.new
      broken_bike.report_broken
      8.times {station.dock_bike(broken_bike)}
      6.times {station.dock_bike(Bike.new)}
      #station.bikes.select { |bike| bike.broken?}
      expect(station.bikes.reject{ |bike| bike.broken?}.size).to eq 6
    end


  #   it 'takes broken bikes'
  #     allow(station).to receive(:bikes).and_return(["bike1",'bike2','bike3'])
  #     expect(subject.take_broken_bikes_from(station))
  end
end
