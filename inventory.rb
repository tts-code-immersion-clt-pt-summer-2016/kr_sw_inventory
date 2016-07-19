
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

inventory = {}
command = ""

while command != 'close'
  print '#> '
  input = gets.chomp.split(' ')
  command = input[0]
  puts "I'm going to run the #{command} command here."
end
