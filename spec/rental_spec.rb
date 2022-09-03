require './rental'
require './person'
require './book'

describe Rental do
  context 'testing Rental class' do
    book = Book.new(title: 'The Planet of Elixir', author: 'K.J Sigei', id: 1)
    person = Person.new(name: 'Musk', age: 20, id: 1, parent_permission: true)
    rental = Rental.new('12-4-2020', book, person)

    it 'should have a title' do
      expect(rental.book.title).to eq('The Planet of Elixir')
    end

    it 'person name should be Musk' do
      expect(rental.person.name).to eq('Musk')
    end
  end
end
