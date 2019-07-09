describe Player do
  subject(:dave) {Player.new('Dave')}

  describe '#name' do
    it "returns it's name" do
      expect(subject.name).to eq 'Dave'
    end
  end 
end
