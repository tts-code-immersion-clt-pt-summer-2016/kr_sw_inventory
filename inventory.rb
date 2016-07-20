
def shift(inventory, item, amount)

end

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

def command_caller(command, args)
  *item, value = args
  item_name = center_args.join(' ').lowercase
  case command
  when "help"
    # Run help method
  when "new"
    # Create new inventory item
  when "update"
    # Set new inventory value
  when "delete"
    # Remove an item from inventory
  when "add", "subtract"
    # Update item amount based on existing amount
  else

    # Something invalid got through.
    return false
  end
  return true
end

def command_parser(input)
  valid_commands = ["help","new","update","delete","add","subtract","close"]
  command, *arguments = input
  if valid_commands.include?(command)
    return "I know what to do with this command.\nIt's the '#{command}' command."
  else
    return "I don't know what to do with the #{command} command."
  end
end

inventory = {}
command = ""

while command != 'close'
  print 'Inventory #> '
  input = gets.chomp.split(' ')
  puts command_parser(input)
  command = input[0]
end
