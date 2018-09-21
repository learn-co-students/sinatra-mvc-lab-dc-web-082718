class PigLatinizer

  @latin = ""

  # phrase = "Once upon a time and a very good time it was there was a moocow coming down along the road and this moocow that was coming down along the road met a nice little boy named baby tuckoo"
  def piglatinize(phrase)
      words_arr = self.split_words(phrase)

      @latin = words_arr.collect do |word|
        if word.size <= 1
          # Append pig to word, return
        elsif word.size == 2
          # Append something else, return
        end

        letter1 = word.slice!(0)

        if is_vowel?(letter1)
          return "#{word}#{letter1}ay"
        first_letter = word.slice!(0)
        appender(word, first_letter)
      else

    end
    return @latin.join(' ')
  end

  def is_vowel?(letter)
    %w(a e i o u).include?(letter)
  end

  def split_words(phrase)
    phrase.chomp.delete(".,?!").split(" ")
  end

end
