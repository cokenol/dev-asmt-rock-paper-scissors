# View class to define methods on display, getting input and display errors.
class View
  # Display array of choices in terminal
  def display(hash)
    puts '=========================================='
    hash.count.times do |time|
      puts "#{hash.keys[time]}. #{hash[time + 1]}"
    end
  end

  # Display error when choice input is within choices range.
  def display_error(choice, choices)
    unless choices.keys.include?(choice)
      puts '=========================================='
      puts "ERROR: #{choice} is not a valid option."
      puts "Please choose one of the following:"
      choices.count.times do |time|
        puts "#{choices.keys[time]}. #{choices[time + 1]}"
      end
    end
  end
end


# game_modes = {
#   1 => 'Player vs PC',
#   2 => 'PC vs PC',
#   3 => 'Exit' }

# view = View.new
# view.display(game_modes)
# view.display_error(3 ,game_modes)
