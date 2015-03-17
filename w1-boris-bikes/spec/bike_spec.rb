require 'bike'
describe Bike do
  context 'when created' do
    it { is_expected.not_to be_broken }
  end
  context 'when in normal use' do
    it 'can break' do
      subject.break
      expect(subject).to be_broken
    end
  end
end
