require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(name = 'Unknown', age = 0, classroom = 'Unknown', parent_permission: true)
    super(name, age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

# new student
student = Student.new('John', 18, '1A', parent_permission: true)
# check student
puts student.name
# check student
puts student.age
student.classroom = '1A'
# check student
puts student.classroom
# check student
puts student.can_use_services?
# check student
puts student.play_hooky
# check student
puts student.of_age?
