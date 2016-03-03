require 'dockingstation'

describe DockingStation do
	it {expect(subject).to respond_to :release_bike }

	describe '#release_bike' do
		it "checks whether release_bike gets a bike" do
			subject.dock_bike(double(:bike))
		  expect(subject.release_bike).to be_a(Bike)
		end

		it 'expects the released bike to be working' do
			subject.dock_bike(double(:bike))
			bike = subject.release_bike
			expect(bike.working?).to eq (true)
		end

		it 'expects error when no bikes' do
				expect {subject.release_bike}.to raise_error(RuntimeError)
		end
	end

	describe "#capacity" do
		it 'expects capacity to have default of 20' do
			expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
		end

		it 'expects to start with different capacity' do
			dock = DockingStation.new(30)
			expect(dock.capacity).not_to eq DockingStation::DEFAULT_CAPACITY
		end
	end

	describe '#dock_bike' do
		 it {expect(subject).to respond_to(:dock_bike).with(1).argument }

		 it 'expects error when dock is full' do
 			subject.capacity.times { subject.dock_bike(double(:bike))}
 			expect {subject.dock_bike(double(:bike))}.to raise_error("There are no spaces available")
 		end

 		it	'expects error when trying to release a broken bike' do
 				bike = double(:bike)
 				bike.report_broken
 				subject.dock_bike(bike)
  			expect {subject.release_bike}.to raise_error(RuntimeError, "Sorry, this bike is broken")
		 	end
  end

	describe '#bikes'  do
		it 'expect to see a bike' do
			expect(subject.bikes).to be_a(Array)
		end

	end




=begin
it 'allows a capacity to be set' do
	expect(subject.capacity=10).to eq subject.capacity
end

it 'checks whether the capacity is DEFAULT CAPACITY' do
	expect(subject.capacity).to eq subject.class::DEFAULT_CAPACITY
end

=end

end
