require_relative '../book'

describe Book do
  before do
    @book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
  end

  describe '#initialize' do
    it 'initializes with a title and author' do
      expect(@book.title).to eq('The Great Gatsby')
      expect(@book.author).to eq('F. Scott Fitzgerald')
    end
  end
end
