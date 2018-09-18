
class PigLatinizer
  attr_accessor :phrase

  def is_a_vowel(letter)
    vowels_caps = %w[A E I O U]
    vowels_notcaps = %w[a e i o u]

    if vowels_caps.include? letter or vowels_notcaps.include? letter
      true
    else
      false
    end
  end

  def append_ay(word)
    word += 'ay'
  end

  def piglatinize(phrase)
    words = phrase.split()
    new_word = ''


    piglatin = words.map do |word|
      new_word = word
      if is_a_vowel(new_word[0])
        new_word += 'w'
      else
        while !is_a_vowel(new_word[0]) do
          new_word = new_word[1,(new_word.length - 1)] + new_word[0]
        end
      end

      latin_word = append_ay(new_word)
    end
    piglatin.join(' ')
  end
end
