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
  describe '#add_student' do
    it 'should add a student to the classroom' do
      student = double('student')
      expect(@classroom.add_student(student)).to eq([student])
    end
  end
end
