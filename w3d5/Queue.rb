class Queue
    def initialize 
        @store = Array.new
    end

    def dequeue
        @store.shift
    end

    def enqueue(el)
        @store.push(el)
        self
    end

    def peek
        @store.first
    end
end