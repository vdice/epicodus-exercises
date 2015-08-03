class Array
  define_method(:queen_attack?) do |piece_position|
    horizontally_in_line = self[1] == piece_position[1]
    vertically_in_line = self[0] == piece_position[0]
    diagonally_in_line = (self[0] - piece_position[0]).abs ==
                         (self[1] - piece_position[1]).abs

    horizontally_in_line || vertically_in_line || diagonally_in_line
  end
end
