require 'dockingstation'

describe DockingStation do
	it {expect(subject).to respond_to :release_bike }

	it 'should raise an error when no bikes available' do
		expect {subject.release_bike}.to raise_error("No bikes available")
	end

	it "checks whether release_bike gets a bike that works" do
		bike = Bike.new
		bike.working = true
		subject.dock(bike)
	  expect(subject.release_bike).to eq (bike)
	end

	it "checks whether release_bike raises an error when the next bike is broken" do
		bike = Bike.new
		bike.working = false
		subject.dock(bike)
	  expect{subject.release_bike}.to raise_error "Bike is broken"
	end

	it "checks whether bikes are sorted so that working bikes are released" do
		good_bike = Bike.new
		good_bike.working = true
		subject.dock(good_bike)

		bad_bike = Bike.new
		bad_bike.working = false
		subject.dock(bad_bike)
		expect(subject.release_bike).to eq (good_bike)		
	end


	# it 'expects bikes to be working' do
	# 	expect(Bike.new.working?).to eq (false || true)
	# end

	it 'should dock a bike' do
		expect(subject).to respond_to(:dock).with(1).argument
	end


	it 'should return docked bike' do
		bike = Bike.new
		expect(subject.dock(bike)).to eq([bike])
	end

	describe "#dock" do
		it 'should raise an error when full to default capacity' do
			DockingStation::DEFAULT_CAPACITY.times{subject.dock(Bike.new)}
			expect{subject.dock(Bike.new)}.to raise_error "Station is full"
		end

		it 'should raise an error when full to specified capacity' do
			capacity = 40
			station = DockingStation.new(capacity)
			capacity.times{station.dock(Bike.new)}
			expect{station.dock(Bike.new)}.to raise_error "Station is full"
		end
	end

  it 'should accept capacity parameter' do
  	expect(DockingStation).to respond_to(:new).with(1).argument
  end

	it 'should have a default capacity' do
		expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
	end


end
