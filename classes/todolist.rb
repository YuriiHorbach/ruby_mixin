module LIL
  class ToDoList
    include Enumerable

    def initialize(items)
      @items = items
    end

    def each
      @items.each { |item| yield(item) }
    end

    def last
      @items[-1]
    end

    def <<(item)
      @items = [item] + @items
      # @items.unshift(item)
    end
  end
end
