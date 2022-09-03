require_relative '../capitalize'
require_relative '../trimmer'
require_relative '../person'

describe TrimmerDecorator do
  context 'testing trimmer class' do
    it 'should return Kiprono' do
      person = Person.new(age = '22', name = ' Kiprono ', parent_permission: true)
      trimmer = TrimmerDecorator.new(person)
      expect(trimmer.correct_name).to eq 'Kiprono'
    end
  end
end



