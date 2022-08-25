# Person
class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @id = rand(1..1000)
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end
end
