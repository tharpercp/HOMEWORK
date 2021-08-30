class GraphNode


    a = GraphNode.new('a')
    b = GraphNode.new('b')
    c = GraphNode.new('c')
    d = GraphNode.new('d')
    e = GraphNode.new('e')
    f = GraphNode.new('f')
    a.neighbors = [b, c, e]
    c.neighbors = [b, d]
    e.neighbors = [a]
    f.neighbors = [e]

    def breadth_first(starting_node, target_value) 
        queue = [a]
        until queue.empty?
            el = queue.shift
            if el == target_value
                return el
            else
                queue += el.neighbors 
            end
        end
        nil
    end
            





end