require './classroom'

class App
  attr_accessor :people, :rentals, :books

  def initialize
    @library = Library.new
    @create_book = CreateBook.new(@library)
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
