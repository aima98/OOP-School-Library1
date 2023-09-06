require './library'
require './create_book'
require './retrieve_data'
require './storage'

class App
  attr_accessor :people, :books, :rentals

  def initialize
    @library = Library.new
    @create_book = CreateBook.new(@library)
    retrieve_data(self)
  end

  def options
    puts ''
    puts 'Welcome to School Library App!'
    puts ''

    puts '1 - List all books',
         '2 - List all people',
         '3 - Create a person',
         '4 - Create a book',
         '5 - Create a rental',
         '6 - List all of rentals for a given person id',
         '7 - Exit'
    puts ''
    puts 'Please choose an option by entering a number: '
    print '#=> '
  end

  def select_option(app, num)
    case num
    when '1'
      app.list_all_books
    when '2'
      app.list_all_people
    when '3'
      app.create_person
    when '4'
      app.create_book
    when '5'
      app.create_rental
    when '6'
      app.list_rentals
    when 7
      store_data(app)
      app.stop  
    else
      puts ''
      puts '#=> Invalid option.(InvalidInputError)'
    end
  end

  def list_all_books
    @library.list_all_books
  end

  def list_all_people
    @library.list_all_people
  end

  def create_teacher
    @library.create_teacher
  end

  def create_student
    @library.create_student
  end

  def create_person
    @library.create_person
  end

  def create_book
    @create_book.create_book
  end

  def create_rental
    @library.create_rental
  end

  def list_rentals
    @library.list_rentals
  end

  def main
    app = App.new
    loop do
      options
      num = gets.chomp
      break if num == '7'

      select_option(app, num)
      puts "\n"
    end

    puts 'Goodbye'
  end
end
