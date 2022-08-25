require_relative './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(name = 'Unknown', age = 0, specialization = 'Unknown', parent_permission: true)
    super(name, age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

# new teacher
teacher = Teacher.new('John', 18, 'Math', parent_permission: true)
# check teacher
puts teacher.name
# check teacher
puts teacher.age
teacher.specialization = 'Math'
# check teacher
puts teacher.specialization
# check teacher
puts teacher.can_use_services?
# check teacher
puts teacher.of_age?
