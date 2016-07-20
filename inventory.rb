
def update(inventory, item, new_amount)
  # Update amount of item in inventory
end

def remove(inventory, item)
  # Remove item from inventory
end

def add(inventory, item, amount)
  # Add item to inventory
end

def show(inventory)
  # Display inventory
end

def command_parser(input)
  valid_commands = ["help","show","add","update","remove"]
  command, *center_arg, final_arg = input
  if valid_commands.include?(command)
    return "I know what to do with this command.\nIt's the '#{command}' command,
            with arguments #{center_arg} and #{final_arg}."
  else
    return "I don't know what to do with the #{command} command."
  end
end

inventory = {}
command = ""

while command != 'close'
  print '#> '
  input = gets.chomp.split(' ')
  puts command_parser(input)
  command = input[0]
end
