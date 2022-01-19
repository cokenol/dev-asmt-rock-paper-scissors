# require 'pry-byebug'
# View class to define methods on display, getting input and display errors.
class View
  # Display array of choices in terminal
  def display(choices)
    puts '=========================================='
    choices.each_with_index do |choice, index|
      puts "#{index + 1}. #{choice}"
    end
    print 'Input '
    choices.each_with_index do |choice, index|
      print choices.count == (index + 1) ?  "or #{index + 1}" :  "#{index + 1}, "
    end
    puts ''
    puts "=========================================="
  end

  # Get user input after display
  def get_input
    gets.chomp.to_i
  end

  # Display error when input is not within available options.
  def display_error(choice, choices)
    unless choices.include?(choice)
      clear
      puts '=========================================='
      puts "ERROR: #{choice} is not a valid option."
      puts "Please choose one of the following:"
    end
  end

  # Method to clear terminal
  def clear
    print `clear`
  end
end
