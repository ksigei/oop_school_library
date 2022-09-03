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

  describe '#of_age?' do
    it 'should return true if the person is of age' do
      expect(@person.of_age?).to eq(true)
    end
  end

  describe '#can_use_services?' do
    it 'should return true if the person is of age' do
      expect(@person.can_use_services?).to eq(true)
    end
  end
end
