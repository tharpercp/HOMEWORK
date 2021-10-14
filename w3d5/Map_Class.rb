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
        value
    end

    def get(key)
        self.each { |kv| return kv[1] if kv[0] == key }
        nil
    end
            

    def delete(key)
        self.each_with_index { |kv, i| self.delete_at(i) if kv[0] == key}
    end

    def show
        deep_dup(map)
    end

    def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
      end  
    end
end





