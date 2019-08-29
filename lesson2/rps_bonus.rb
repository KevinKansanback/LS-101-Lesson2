VALID_CHOICES = %w(rock paper scissors lizard spock r p s l sp)
MOVES = { 'rock' => ['lizard', 'scissors'],
          'paper' => ['rock', 'spock'],
          'scissors' => ['paper', 'lizard'],
          'spock' => ['scissors', 'rock'],
          'lizard' => ['spock', 'paper'] }

def retrieve_player_choice
  choice = ''
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
  choice
end

def win?(first, second)
  (first == 'rock' && MOVES.fetch("rock").include?(second)) ||
    (first == 'paper' && MOVES.fetch('paper').include?(second)) ||
    (first == 'scissors' && MOVES.fetch('scissors').include?(second)) ||
    (first == 'spock' && MOVES.fetch('spock').include?(second)) ||
    (first == 'lizard' && MOVES.fetch('lizard').include?(second))
end

def player_won?(player, computer)
  if win?(player, computer)
    true
  elsif win?(computer, player)
    false
  else
    nil
  end
end

def display_results(player_win)
  if player_win == true
    prompt("You won!")
  elsif player_win == false
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

# program start
system('clear') || system('cls')

loop do
  player_win_count = 0
  computer_win_count = 0
  loop do
    player_choice = retrieve_player_choice

    computer_choice = letter_convert(VALID_CHOICES.sample)

    prompt("You chose: #{player_choice}; Computer chose: #{computer_choice}")

    winner = player_won?(player_choice, computer_choice)
    display_results(winner)

    player_win_count += 1 if winner
    computer_win_count += 1 if winner == false

    puts "-------------------------------------------------------------------"
    puts "-------------------------------------------------------------------"

    prompt("Your score is #{player_win_count}")
    prompt("The computer score is #{computer_win_count}")

    if player_win_count == 5
      prompt("You won! You're the Grand Champion. Great job!")
      break
    elsif computer_win_count == 5
      prompt("Too bad the computer beat you...")
      break
    end
    puts "-------------------------------------------------------------------"
  end

  prompt("Do you want to play again? Type anything that starts with 'y'
  to keep playing, anything else will exit.")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  system('clear') || system('cls')
end
prompt('thank you for playing, good bye!')
