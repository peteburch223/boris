require 'dockingstation'

describe DockingStation do 
	it {expect(subject).to respond_to :release_bike }

	it "checks whether release_bike gets a bike" do
	expect(subject.release_bike).to be_a(Bike)
	end

	it 'expects bikes to be working' do
		expect(Bike.new.working?).to eq (false or true)
	end
	
	it {expect(subject).to respond_to :dock_bike}.with(1).argument }

	it 'expect to see a bike' do
		dock = DockingStation.new
		bike = dock.release_bike
		expect(dock.bike).to eq(bike)
	end

	it 'expect to return the same bike' do
		dock = DockingStation.new
		bike = dock.release_bike
		expect(dock.dock_bike(bike)).to eq(bike)
	end

	
end







