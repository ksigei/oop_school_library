require './teacher'

describe Teacher do
  context 'testing Teacher class' do
    teacher = Teacher.new(name: 'Mark Zuck', age: 20, id: 1, parent_permission: true, specialization: 'OOP')

    it 'should have a name' do
      expect(teacher.name).to eq('Mark Zuck')
    end

    it 'Should specialize in OOP' do
      expect(teacher.specialization).to eq('OOP')
    end
  end
end
