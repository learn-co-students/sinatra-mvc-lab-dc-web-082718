require 'pry'


class PigLatinizer
  attr_accessor :words

  def piglatinize(word)
    words = word.split(" ")
    if words.size == 1
      make_piglatin(word)
    else
      words.map do |word|
        make_piglatin(word)
      end.join(" ")
    end
  end

        def make_piglatin(word)
            array_word = word.downcase.split("")
            alpha = ('a'..'z').to_a
            vowels = %w[a e i o u]
            consanants = alpha - vowels
          if vowels.include?(array_word[0])
            word + "way"
          elsif consanants.include?(array_word[0]) && consanants.include?(array_word[1]) && consanants.include?(array_word[2])
            word[3..-1] + word[0] + word[1] + word[2] + "ay"
          elsif consanants.include?(array_word[0]) && consanants.include?(array_word[1])
            word[2..-1] + word[0] + word[1] + "ay"
          elsif consanants.include?(array_word[0])
              word[1..-1] + word[0] + "ay"
            end
          end

end
