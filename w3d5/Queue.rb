class Queue
    def initialize 
        @store = Array.new
    end

    def dequeue
        @store.pop
    end

    def enqueue(el)
        @store.unshift(el)
        self
    end

    def peek
        @store.first
    end
end