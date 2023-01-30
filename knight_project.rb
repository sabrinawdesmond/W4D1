class KnightPathFinder
    
    def self.root_node(pos)
        row, col = pos
        pos = @grid[0][1]
    end

    def self.valid_move(pos)
        possible = [[2, 2], [2, 0], [1, 3], [2, 5], [2, 7], [1, 4]]
    end

    def initialize
        @size = 8 * 8
        kpf = KnightPathFinder.new(0, 1)
        @grid = Array.new(8) { Array.new(8, ' ') }
        @parent = nil
        @children = []
    end   

    def build_move_tree
        start = self.root_node(pos)
    end
end