class Book
  attr_accessor :title, :author, :rentals

  def initialize(title = 'unknown', author = 'unknown')
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, person, self)
  end

  def as_json()
    {
      title: @title,
      author: @author
    }
  end
end
