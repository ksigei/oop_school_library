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
end
