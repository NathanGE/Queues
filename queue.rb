class Queue
  attr_reader :items

  def initialize
    @items = []
  end

  def enqueue(item)
    items.push(item)
  end

  def dequeue
    items.shift
  end

  def front
    items[0]
  end

  def empty?
    items.empty?
  end

  def print
    items.each {|item| puts item }
  end
end
