
def create(inventory, item, amount)
  inventory[item] = amount
end

def shift(inventory, item, amount)
  inventory[item] = inventory[item] + amount
end

def update(inventory, item, amount)
  # Update amount of item in inventory
  # or create new item in inventory
  inventory[item] = amount
end

def remove(inventory, item)
  inventory.delete(item)
end

def add(inventory, item, amount)
  # Add item to inventory
  return inventory
end

def show(inventory)
  # Display inventory
  return inventory
end

def help
  return "Here is helpful documentation."
end

def command_caller(i, command, item, value)
  *item, value = args
  item_name = center_args.join(' ').lowercase
  case command
  when "help"
    puts help()
  when "new"
    update(i, item, value)
  when "update"
    update(i, item, value)
  when "delete"
    remove(i, item, value)
  when "add", "subtract"
    value *= -1 if command == "subtract"
    shift(i, item, value)
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
  command, *item_name, value = input
  if command_caller(inventory, command, item_name, value)
    puts "Command run successfully."
  else
    puts "Something went wrong."
  end
end
