class Inventory

  attr_reader :inventory

  def initialize(i = {})
    i.default = nil
    @inventory = i
  end

  def create(item)
    @inventory[item] = 0
  end

  def update(item, value)
    @inventory[item] = value
  end

  def shift(item, value)
    @inventory[item] = @inventory[item] + value
  end

  def remove(item)
    @inventory.delete(item)
  end

  def display
    return @inventory.inspect
  end

end

def help
  return "Here is helpful documentation. Not really, sorry."
end

def command_caller(i, command, item, value)
  case command
  when "help"
    puts help()
  when "new"
    i.create(item)
  when "update"
    i.update(item, value)
  when "delete"
    i.remove(item)
  when "add", "subtract"
    value *= -1 if command == "subtract"
    i.shift(item, value)
  when "show"
    puts i.display
  when "close"
    sleep(1)
  else
    return false
  end
  return true
end

def command_parser(command, input)
  if input.length == 1
    return [input[0], nil]
  elsif command == "new" || command == "delete"
    return [input.join(' '), nil]
  else
    value = input.pop
    return [input.join(' '), value.to_i]
  end
end

inventory = Inventory.new()
command = ""

while command != 'close'
  print 'Inventory #> '
  input = gets.chomp.split(' ')
  command = input.shift
  item_name, value = command_parser(command, input)
  if !command_caller(inventory, command, item_name, value)
    puts "Something went wrong."
  end
end
