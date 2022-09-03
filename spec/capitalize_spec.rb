require_relative '../capitalize'
require_relative '../trimmer'
require_relative '../person'
# rubocop:disable Lint/UselessAssignment
describe CapitalizeDecorator do
  context 'testing Capitalizer class' do
    it 'should return Kiprono' do
      person = Person.new(age = 22, name = 'kiprono', parent_permission: true)
      capitalizer = CapitalizeDecorator.new(person)
      expect(capitalizer.correct_name).to eq 'Kiprono'
    end
  end
end
# rubocop:enable Lint/UselessAssignment
