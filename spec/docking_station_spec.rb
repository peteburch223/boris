require 'docking_station'
require 'bike'

describe DockingStation do
    it { is_expected.to respond_to(:release_bike)}

    it 'expects bikes to be working' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock_bike).with(1).argument}
    it { is_expected.to respond_to(:bike)}

    it 'expects docked bike to be returned bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end

    it "raises an error if user tries to release bike if there isn't one" do
      expect { subject.release_bike }.to raise_error("No Bikes!")
    end

end
