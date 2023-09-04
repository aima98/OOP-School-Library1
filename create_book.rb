require './library'

class CreateBook
  def initialize(library)
    @library = library
    @books = @library.books
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books << book
    puts ''
    puts '#=>  Book created successfully'
  end
end
