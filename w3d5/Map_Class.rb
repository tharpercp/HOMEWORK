class Map
    def initialize
        @map = Array.new
    end

    def set(key, value)
        self.each_with_index do |el, i|
            if self[i][0] == key
                self[i][1] = value
            else
                @map << [key, value]
            end
        end
    end

    def get(key)
        self.each { |kv| return kv if kv[0] == key }
    end
            

    def delete(key)
        self.each_with_index { |kv, i| self.delete_at(i) if kv[0] == key}
    end

    def show
        p self
    end
end





