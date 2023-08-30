class Rental
  attr_accessor :date, :person, :book

  def initialize(date)
    @date = date
    @person = person
    @book = book

    # a rental belongs to book
    @book.add_rental(self)

    # rental belongs to person
    @person.add_rental(self)
  end
end
