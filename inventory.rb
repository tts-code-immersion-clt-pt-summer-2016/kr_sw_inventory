class Inventory

  attr_reader :item, :amount

  def initialize(item,amount)
    @item=item
    @amount=amount
  end

  def new(item)
    inv
  end

  def update(amount)
    #set an item amount
  end

  def add(amount)
    #add amount to item
  end

  def Remove(amount)
    #remove amount from item
  end

  def delete(item)
    #delete item entirely
  end

  def help
    #help
  end

  def Display(item,amount)
    #show item and amount
  end

  def close
    #close
  end
end

inv = {}
