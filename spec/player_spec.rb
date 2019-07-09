describe Player do
  subject(:dave) {Player.new('Dave')}
  subject(:mittens) {Player.new('Mittens')}

  describe '#name' do
    it "returns it's name" do
      expect(dave.name).to eq 'Dave'
    end

  it 'returns the hit points' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end

  it 'damages the player' do
    expect(mittens).to receive(:receive_damage)
    dave.attack(mittens)
  end

  it 'reduces the player hit points' do
    expect { dave.receive_damage }.to change { dave.hit_points }.by(-10)
  end
end
end 
