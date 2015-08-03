class String
  define_method(:foshizzle) do
    split_words = self.split
    split_words.each do |word|
      word.replace word[0] + word[1..-1].gsub('s','z')
    end
    split_words.join(" ")
  end
end
