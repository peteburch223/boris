require 'docking_station'

describe DockingStation do
	it {should respond_to :release_bike}

	let(:bike) { subject.release_bike }
	it 'creates an instance of the Bike class when release_bike is called and the bike is working' do
		expect(bike.class).to eq Bike
  		expect(bike).to be_working
	end

	it {should respond_to :return_bike}
  it {should respond_to :bike_count}
 
  it 'increases the count of the docking station by 1 when a bike is returned' do
  count = subject.bike_count  
  subject.return_bike(bike)
  expect(subject.bike_count).to eq count + 1
  end

end 
