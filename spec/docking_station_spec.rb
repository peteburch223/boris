require 'docking_station'

describe DockingStation do
	it {should respond_to :release_bike}

	let(:released_bike) { subject.release_bike }
	it 'creates an instance of the Bike class when release_bike is called and the bike is working' do
		expect(released_bike.class).to eq Bike
  		expect(released_bike).to be_working
	end

	it {should respond_to(:return_bike).with(1).argument }
  it {should respond_to :bike}
 
  it 'when we return a bike we are able to see it at the dock' do
    subject.return_bike(released_bike)
    expect(subject.bike).to eq released_bike
end

end 
