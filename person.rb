# Person
class Person
  attr_accessor :name, :age, :id
  attr_reader :parent_permission

  def initialize(name = 'Unknown', age = 0, parent_permission: true)
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
