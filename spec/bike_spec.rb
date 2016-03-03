require 'bike'


describe Bike do
	describe '#working?' do
		it { expect(subject).to respond_to :working? }

		it 'expects bikes to be working' do
			expect(subject.working?).to eq true
		end
	end

	describe '#broken' do
			it { expect(subject).to respond_to :broken }

			it 'expects working to be false' do
				subject.broken
				expect(subject.working?).to be false
			end
	end





	# 	it 'expects bikes to be working' do
	# 	subject.broken
	# 	expect(subject.working?).to eq false
	# end

end
