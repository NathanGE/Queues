class PriorityQueue
  attr_reader :items

  def initialize
    @items = []
  end

  class QueueItem
    attr_reader :item, :priority

    def initialize(item, priority)
      @item = item
      @priority = priority
    end
  end

  def enqueue(item, priority)
    queue_item = QueueItem.new(item, priority)
    added = false
    items.each do |item|
      if(queue_item.priority < item.priority)
        items.insert(items.index(item), queue_item)
        added = true
        break;
      end
    end

    if(!added)
      items << queue_item
    end
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
    items.each {|i| puts i.item + ", " + i.priority.to_s }
  end
end
