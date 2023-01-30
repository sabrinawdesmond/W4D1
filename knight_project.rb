 class KnightPathFinder
    
    def self.root_node(pos)
        row, col = pos
        pos = @grid[row][col]
    end

    def self.valid_move(row, col)
        possible = []
        possible << [row + 1, col + 2] if (row + 1 >= 0 && row + 1 <= 7) && (col + 2 >= 0 && col + 2 <= 7)
        possible << [row + 1, col - 2] if (row + 1 >= 0 && row + 1 <= 7) && (col - 2 >= 0 && col - 2 <= 7)
        possible << [row - 1, col + 2] if (row - 1 >= 0 && row - 1 <= 7) && (col + 2 >= 0 && col + 2 <= 7)
        possible << [row - 1, col - 2] if (row - 1 >= 0 && row - 1 <= 7) && (col - 2 >= 0 && col - 2 <= 7)
        possible << [row + 2, col + 1] if (row + 2 >= 0 && row + 2 <= 7) && (col + 1 >= 0 && col + 1 <= 7)
        possible << [row + 2, col - 1] if (row + 2 >= 0 && row + 2 <= 7) && (col - 1 >= 0 && col - 1 <= 7)
        possible << [row - 2, col + 1] if (row - 2 >= 0 && row - 2 <= 7) && (col + 1 >= 0 && col + 1 <= 7)
        possible << [row - 2, col - 1] if (row - 2 >= 0 && row - 2 <= 7) && (col - 1 >= 0 && col - 1 <= 7)
        possible
    end

    def initialize(row, col)
        # @size = 8 * 8
        # kpf = KnightPathFinder.new(0, 1)
        # row, col = pos
        @grid = Array.new(8) { Array.new(8, ' ') }
        @parent = nil
        @considered_pos = []

        # self.root_node = pos
    end   

    def new_move_positions(row, col)
        moves = KnightPathFinder.valid_move(row, col)
        raise 'no possible moves' if moves.empty?

        final = []
        moves.each do |arr|
            if !@considered_pos.include?(arr)
                final << arr
            end
        end

        @considered_pos << [row, col]
        raise 'all moves already done' if final.empty?
        final
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

