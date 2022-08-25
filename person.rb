require_relative './nameable'
require_relative './capitalize'
require_relative './rental'
require_relative './trimmer'

class Person < Nameable
  attr_accessor :name, :age, :id, :rentals
  attr_reader :parent_permission

  def initialize(name = 'Unknown', age = 0, parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @id = rand(1..1000)
    @rentals = []
    super()
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def capitalize
    @name.capitalize
  end

  def correct_name
    @name
  end
end

person = Person.new(22, 'maximilianus')
capitalized_person = CapitalizeDecorator.new(person)
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)

puts person.correct_name
puts capitalized_person.correct_name
puts capitalized_trimmed_person.correct_name
