# require 'pry-byebug'
# View class to define methods on display, getting input and display errors.
class View
  # Display array of choices in terminal
  def display(choices)
    puts '=========================================='
    print 'Input '
    choices.each_with_index do |choice, index|
      print choices.count == (index + 1) ? "or #{index + 1}" : "#{index + 1}, "
    end
    puts ''
    choices.each_with_index do |choice, index|
      puts "#{index + 1}. #{choice}"
    end
    puts '=========================================='
  end

  # Get user input after display
  def ask_input
    gets.chomp.to_i
  end

  # Display error when input is not within available options.
  def display_error(choice, choices)
    # binding.pry
    return '' if choices.include?(choice)

    clear
    puts "#{choice}, #{choices}"
    puts "#{choice.class}, #{choices.first.class}"
    puts '=========================================='
    puts "ERROR: #{choice} is not a valid option."
    puts 'Please choose one of the following:'
  end

  # Method to clear terminal
  def clear
    system('clear') || system('cls')
  end
end
