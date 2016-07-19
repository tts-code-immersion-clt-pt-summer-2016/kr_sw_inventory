# Simple Item Class to manange names and amounts of any generic item.
class Item

  attr_reader :name
  attr_accessor :amount

  def initialize(name, amount)
    @name = name
    @amount = amount
  end

end

# More specific class for the type of Item the app will be built for.
class Produce < Item

end
