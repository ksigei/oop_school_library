require './book'

describe Book do
  context 'testing Book class' do
    book = Book.new(title: 'The Planet of Elixir', author: 'K.J Sigei', id: 1)
    it 'Book title should return The Planet of Elixir' do
      expect(book.title).to eq 'The Planet of Elixir'
    end

    it 'Book author should return K.J Sigei' do
      expect(book.author).to eq 'K.J Sigei'
    end
  end
end
