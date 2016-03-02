require 'dockingstation'

describe DockingStation do
	it {expect(subject).to respond_to :release_bike }

	it "checks whether release_bike gets a bike" do
	expect(subject.release_bike).to be_a Bike
	end

	it 'expects bikes to be working' do
		expect(Bike.new.working?).to eq (false or true)
	end

	it 'should dock a bike' do
		expect(subject).to respond_to(:dock).with(1).argument
	end

	it 'should return docked bike' do
		station = DockingStation.new
		bike = Bike.new
		expect(station.dock(bike)).to eq(bike)
	end

	it 'should return docked bike' do
		station = DockingStation.new
		bike = Bike.new
		station.dock(bike)
		expect(station.bike).to eq(bike)
	end

end
