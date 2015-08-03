
class String
  articles = ['the', 'a', 'an', 'of']

  define_method(:title_case) do
    split_sentence = self.split
    split_sentence.each do |word|
      word.downcase!()
      if !articles.include? word
        word.capitalize!()
      end
    end
    split_sentence.join(" ")
  end
end
