# prompt for: loan amount, APR, loan duration (each separate variable) nesting
#   validate each entry
# calculate Monthly interest and loan duration in months
# use: m = p * (j / (1 -(1+j)**(-n))))

# run code through rubocop
require 'yaml'

MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def loan_calculate(p, j, n)
  p * (j / (1 - (1 + j)**(-n)))
end

def prompt(message)
  puts ">>> #{message}"
end

def valid_integer?(integer)
  integer.to_i.to_s == integer
end

def valid_float?(float)
  float.to_f.to_s == float
end

def valid_number?(num)
  valid_float?(num) || valid_integer?(num)
end

def validate_positive_number?(num)
  (num.to_i > 0 || num.to_f > 0.0)
end

def string_convert_to_num(string)
  if valid_integer?(string)
    string.to_i
  else
    string.to_f
  end
end
# START
# welcome user to loan calculator
prompt(MESSAGES['welcome'])
name = ''
loop do
  name = gets.chomp

  if name.empty? || name.to_i != 0
    prompt(MESSAGES['valid_name'])
    prompt(MESSAGES['welcome'])
  else
    break
  end
end

prompt("Hi #{name}, I hope you enjoy your experience today!")

loop do # main loop

  # get loan amount
  prompt(MESSAGES['loan_amount_message'])
  loan_amount = ''
  #  use loop to validate
  loop do
    loan_amount = gets.chomp

    if valid_number?(loan_amount) && validate_positive_number?(loan_amount)
      loan_amount = string_convert_to_num(loan_amount)
    break
    else
      prompt(MESSAGES['valid_loan_number'])
    end
  end

  # prompt user for APR
  prompt(MESSAGES['apr_message'])

  apr_rate = ''

  loop do
    apr_rate = gets.chomp

    if valid_number?(apr_rate) && validate_positive_number?(apr_rate)
      apr_rate = string_convert_to_num(apr_rate).to_f / 100 / 12
      break
    else
      prompt(MESSAGES['valid_apr_number'])
    end
  end

  # prompt user for loan duration in months and save into variable
  prompt(MESSAGES['loan_duration_message'])

  loan_duration = ''

  #  use loop to validate
  loop do
    loan_duration = gets.chomp
    if valid_number?(loan_duration) && validate_positive_number?(loan_duration)
      loan_duration = string_convert_to_num(loan_duration)
      break
    else
      prompt(MESSAGES['valid_loan_duration'])
    end
  end
  # perform calculation and save it to a var monthly_payment

  monthly_payment = loan_calculate(loan_amount, apr_rate, loan_duration)
  monthly_payment = monthly_payment.round(2).to_f

  # display result of calculation
  prompt("Your monthly payment is $#{format('%02.2f', monthly_payment)}, not too bad!")

  # ask to do it again
  prompt(MESSAGES['perform_again'])

  # loop to validate - only accepting - y, yes, n, no

  answer = ''
  loop do
    answer = gets.chomp.downcase
    case answer
    when "y"
      answer = 'y'
      break
    when "yes"
      answer = 'y'
      break
    when 'n'
      answer = 'n'
      break
    when 'no'
      answer = 'n'
      break
    when 'the jungle book'
      prompt(MESSAGES['jungle_book'])
    else
      prompt(MESSAGES['perform_again_invalid'])
    end
  end
  break unless answer == 'y' || answer == 'yes'
end
# say goodbye
prompt(MESSAGES['end_program'])
