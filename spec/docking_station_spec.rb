require 'docking_station'

describe DockingStation do
		it {should respond_to :release_bike}

		it 'creates an instance of the Bike class when release_bike is called' do
			expect(subject.release_bike.class).to eq Bike
		end
end 
