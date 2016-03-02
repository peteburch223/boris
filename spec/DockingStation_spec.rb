require 'dockingstation'

describe DockingStation do 
	it {expect(subject).to respond_to :release_bike }

	it "checks whether release_bike gets a bike" do
		station = DockingStation.new
		station.dock_bike(Bike.new)
	expect(station.release_bike).to be_a(Bike)
	end

	it 'expects bikes to be working' do
		expect(Bike.new.working?).to eq (false or true)
	end
	
	it {expect(subject).to respond_to(:dock_bike).with(1).argument }

	it 'expect to see a bike' do
		 
		expect(subject.bikes).to be_a(Array)
	end

	#it 'expect to return the same bike' do
	#	dock = DockingStation.new
	#	bike = dock.bike
	#	expect(dock.dock_bike(bike)).to eq(bike)
	#end

	it 'expects error when no bikes' do
			expect {
				while true 
				subject.release_bike
			    end}.to raise_error(RuntimeError)
	end

	describe "#dock_bike" do
		it 'expects error when dock is full' do
			
			
			expect {
				while true
				subject.dock_bike(Bike.new)
				end
				}.to raise_error(RuntimeError)
		end
	end	
			

	
end







