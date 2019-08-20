VALID_CHOICES = %w(rock paper scissors lizard spock r p s l sp)

def win?(first, second)
  moves = { 'rock' => ['lizard', 'scissors'],
            'paper' => ['rock', 'spock'],
            'scissors' => ['paper', 'lizard'],
            'spock' => ['scissors', 'rock'],
            'lizard' => ['spock', 'paper'] }

  (first == 'rock' && moves.fetch("rock").include?(second)) ||
  (first == 'paper' && moves.fetch('paper').include?(second)) ||
  (first == 'scissors' && moves.fetch('scissors').include?(second)) ||
  (first == 'spock' && moves.fetch('spock').include?(second)) ||
  (first == 'lizard' && moves.fetch('lizard').include?(second))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def letter_convert(input)
  case input
  when 'r'
    input = 'rock'
  when 'p'
    input = 'paper'
  when 's'
    input = 'scissors'
  when 'l'
    input = 'lizard'
  when 'sp'
    input = 'spock'
  end
  input
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  choice = ''
  player_win_count = 0
  computer_win_count = 0
  loop do
    loop do
      prompt("Choose one: rock (r), paper (p), scissors (s), lizard (l) or
              spock (sp). First to 5 wins, wins!")
      choice = gets.chomp.downcase
      if VALID_CHOICES.include?(choice)
        choice = letter_convert(choice)
        break
      else
        prompt("That's not a valid choice")
      end
    end

    computer_choice = letter_convert(VALID_CHOICES.sample)

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_win_count += 1
    elsif win?(computer_choice, choice)
      computer_win_count += 1
    end
    prompt("Your score is #{player_win_count} the computer score is
    #{computer_win_count}")

    if player_win_count == 5
      prompt("You won! great job!")
      break
    elsif computer_win_count == 5
      prompt("Too bad the computer beat you...")
      break
    end
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt('thank you for playing, good bye!')
