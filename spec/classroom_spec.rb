require_relative '../classroom'
require_relative '../person'
require_relative '../student'

describe Classroom do
  before do
    @classroom = Classroom.new('English')
  end

  describe '#initialize' do
    it 'initializes with a label' do
      expect(@classroom.label).to eq('English')
    end
  end
end
