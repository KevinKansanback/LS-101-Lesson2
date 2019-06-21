require 'yaml'

MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def loan_calculate(p, j, n)
  p * (j / (1 - (1 + j)**-n))
end

def prompt(message)
  puts ">>> #{message}"
end

def retrieve_name
  name_entry = ''
  loop do
    name_entry = gets.chomp
    if invalid_name_input?(name_entry)
      prompt(MESSAGES['valid_name'])
      prompt(MESSAGES['welcome'])
    else
      break
    end
  end
  name_entry
end

def invalid_name_input?(input)
  if input.empty? || input.to_i != 0 || input.start_with?(' ')
    true
  elsif input.to_i == 0 || input.to_f == 0.0
    true
  end
end

def valid_integer?(integer)
  integer.to_i.to_s == integer
end

def valid_float?(float)
  float.to_f.to_s == float
end

def valid_num?(num)
  valid_float?(num) || valid_integer?(num)
end

def valid_loan_amt_entry?(num)
  valid_float?(num) || valid_integer?(num)
end

def valid_apr_entry?(num)
  valid_float?(num) || valid_integer?(num)
end

def valid_loan_dur_entry?(num)
  valid_float?(num) || valid_integer?(num)
end

def valid_pos_num?(num)
  (num.to_i > 0 || num.to_f > 0.0)
end

def string_convert_to_num(string)
  if valid_integer?(string)
    string.to_i
  else
    string.to_f
  end
end

def retrieve_loan_amount
  loop do
    loan_amt_in = gets.chomp

    if valid_loan_amt_entry?(loan_amt_in) && valid_pos_num?(loan_amt_in)
      return string_convert_to_num(loan_amt_in)
    else
      prompt(MESSAGES['valid_loan_number'])
    end
  end
end

def retreive_apr
  loop do
    retreive_apr_rate = gets.chomp

    if valid_apr_entry?(retreive_apr_rate) && valid_pos_num?(retreive_apr_rate)
      return string_convert_to_num(retreive_apr_rate).to_f / 100 / 12
    else
      prompt(MESSAGES['valid_apr_number'])
    end
  end
end

def retrieve_loan_duration
  loop do
    loan_dur = gets.chomp

    if valid_loan_dur_entry?(loan_dur) && valid_pos_num?(loan_dur)
      return string_convert_to_num(loan_dur)
    else
      prompt(MESSAGES['valid_loan_duration'])
    end
  end
end

def display_monthly_payment(calculated_payment)
  payment = format('%02.2f', calculated_payment)
  prompt("Your monthly payment is $#{payment}, not too bad!")
end

def valid_new_calc_answer?(user_input)
  valid_entry = ['y', 'yes', 'n', 'no']
  if valid_entry.include?(user_input)
    true
  end
end

def retrieve_new_calc_answer
  answer = ''
  loop do
    answer = gets.chomp.downcase
    break if valid_new_calc_answer?(answer)
    display_invalid_recalc_answer_message(answer)
  end
  answer
end

def display_invalid_recalc_answer_message(answer)
  if answer == 'the jungle book'
    prompt(MESSAGES['jungle_book'])
  else
    prompt(MESSAGES['perform_again_invalid'])
  end
end

def new_calculation?(answer)
  if answer == 'y' || answer == 'yes'
    true
  end
end

# START
prompt(MESSAGES['welcome'])

name = retrieve_name()
prompt("Hi #{name}, I hope you enjoy your experience today!")

loop do # main loop
  prompt(MESSAGES['loan_amount_message'])

  loan_amount = retrieve_loan_amount()

  prompt(MESSAGES['apr_message'])

  apr_rate = retreive_apr()

  prompt(MESSAGES['loan_duration_message'])

  loan_duration = retrieve_loan_duration()

  monthly_payment = loan_calculate(loan_amount, apr_rate, loan_duration)

  display_monthly_payment(monthly_payment)

  prompt(MESSAGES['perform_again'])

  recalc_answer = retrieve_new_calc_answer

  break unless new_calculation?(recalc_answer)
end

prompt(MESSAGES['end_program'])
