class Fixnum
  define_method(:ping_pong) do
    ary = []
    if self > 0
      for i in 1..self do
        if i%3 == 0 && i%5 == 0
          ary.push('ping-pong')
        elsif i%3 == 0
          ary.push('ping')
        elsif i%5 == 0
          ary.push('pong')
        else
          ary.push(i)
        end
      end
    else
      raise ArgumentError.new('input must be a positive integer greater than 0')
    end
    ary
  end
end
