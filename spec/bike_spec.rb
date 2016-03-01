require 'bike'


describe Bike do
	it { expect(subject).to respond_to :working? }


	it 'expects bikes to be working' do
		expect(subject.working?).to eq true
	end

end



