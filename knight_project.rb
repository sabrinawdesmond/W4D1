 class KnightPathFinder
    
    def self.root_node(pos)
        row, col = pos
        pos = @grid[0][1]
    end

    def self.valid_move(pos)
      row, col = pos
      if (row > -1 && row < 8) && (col > -1 && col < 8)
        return true
      end
      false 
    end

    def initialize(pos)
        # @size = 8 * 8
        # kpf = KnightPathFinder.new(0, 1)
        @grid = Array.new(8) { Array.new(8, ' ') }
        @parent = nil
        @children = []

        self.root_node = pos
    end   

    def new_move_postions(pos)
      old_pos = pos

    end

    def build_move_tree
        new_path = PolyTreeNode.new(self.root_node)
        @parent = self.root_node
        @considered_pos << @parent.children
        # @considered_pos = @children.dup
    end

    # parents array that starts with self.root_node
    # self.root_node.children >> children array
    #  considered postitions array a
end

