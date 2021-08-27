class Stack
    def initialize
      @store = Array.new
    end

    def push(el)
      @store.push(el)
    end

    def pop
      @store.pop
    end

    def peek
      @store.first
    end
  end