# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml') 

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_integer?(integer)
  integer.to_i.to_s == integer
end

def number?(num)
  valid_integer?(num) || valid_float?(num)
end

def valid_float?(float)
  float.to_f.to_s == float
end

def operation_to_message(op)
  word = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
  
  word
end

prompt(MESSAGES['welcome'])

name = ''

loop do
  name = Kernel.gets().chomp()
  
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hello #{name}, thanks for using me for your basic calculator needs!")
loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['number1_message'])
    number1 = Kernel.gets().chomp()
    
    if valid_integer?(number1)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end
  number2 = ''
  loop do
    prompt(MESSAGES['number2_message'])
    number2 = Kernel.gets().chomp()
    if valid_integer?(number2)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  
  
  
  
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt(operator_prompt)
  
  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['operator_error_prompt'])
    end
  end

  
  
  prompt("#{operation_to_message(operator)} the two numbers...")
  
  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end  
           
  puts result
  
  prompt(MESSAGES['perform_again'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['end_program'])
