require_relative '../person'

describe Person do
  before do
    @person = Person.new(20)
  end

  describe '#initialize' do
    it 'initializes with an age' do
      expect(@person.age).to eq(20)
    end
  end
  describe '#add_rental' do
    it 'should add a rental to the person' do
      rental = double('rental')
      expect(@person.add_rental(rental)).to eq([rental])
    end
  end
  # check if the person is of age
  describe '#of_age?' do
    it 'should return true if the person is of age' do
      expect(@person.of_age?).to eq(true)
    end
  end
  # check if the person is of age
  describe '#can_use_services?' do
    it 'should return true if the person is of age' do
      expect(@person.can_use_services?).to eq(true)
    end
  end
end
