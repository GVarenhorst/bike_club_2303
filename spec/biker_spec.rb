require './lib/ride'
require './lib/biker'
RSpec.describe Ride do 
  before(:each) do
    @biker = Biker.new("Kenny", 30)
    @biker2 = Biker.new("Athena", 15)
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
  end
  describe '#initialize' do
    it 'exists' do
      expect(@biker).to be_a(Biker)
    end

    it 'has a name' do
      expect(@biker.name).to eq("Kenny")
    end

    it 'has a max_distance' do
      expect(@biker.max_distance).to eq(30)
    end

    it 'has a rides hash and can log rides' do
      expect(@biker.rides).to eq({})

      biker.log_ride(ride1, 92.5)
      biker.log_ride(ride1, 91.1)
      biker.log_ride(ride2, 60.9)
      biker.log_ride(ride2, 60.9)

      expect(@biker.rides).to eq(@rides)
    end

    it 'has an acceptable_terrain array and can learn terrain' do
      expect(@biker.acceptable_terrain).to eq([])

      @biker.learn_terrain!(:gravel)
      @biker.learn_terrain!(:hills)

      expect(@biker.acceptable_terrain).to eq([:gravel, :hills])
    end

    xit 'has a personal record' do


    end
  end
end

    