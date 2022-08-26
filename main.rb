# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize

require_relative 'app'

def main
  puts 'Welcome to the library management system(LMS)!'
  puts 'What would you like to do?'
  puts '1. List books'
  puts '2. List people'
  puts '3. Create person'
  puts '4. Create book'
  puts '5. Create rental'
  puts '6. List rentals'
  puts '7. Quit'
  print '> '
  choice = gets.chomp
  case choice
  when '1'
    app.list_books
    main
  when '2'
    app.list_people
    main
  when '3'
    puts 'What is the name of the person?'
    print '> '
    name = gets.chomp
    puts 'What type of person is this? (teacher/student)'
    print '> '
    type = gets.chomp
    app.create_person(name, type)
    main
  when '4'
    puts 'What is the title of the book?'
    print '> ' # This is a string interpolation, it will print the string and then the variable.
    title = gets.chomp
    app.create_book(title)
    main
  when '5'
    puts 'Who is renting the book?'
    print '> '
    person_id = gets.chomp.to_i
    puts 'What is the title of the book?'
    print '> '
    book_id = gets.chomp.to_i
    puts 'When is the rental?'
    print '> '
    date = gets.chomp
    app.create_rental(person_id, book_id, date)
    main
  when '6'
    puts 'Who is renting the book?'
    print '> '
    person_id = gets.chomp.to_i
    app.list_rentals(person_id)
    main
  when '7'
    puts 'Goodbye!'
  else
    puts 'Invalid choice'
    main
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/AbcSize
