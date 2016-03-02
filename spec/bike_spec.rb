require 'bike'


describe Bike do
	it { expect(subject).to respond_to :working? }

	it { expect(subject).to respond_to :broken }


	it 'expects bikes to be working' do
		expect(subject.working?).to eq true
	end

		it 'expects bikes to be working' do
		subject.broken
		expect(subject.working?).to eq false
	end

end



