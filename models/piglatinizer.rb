class PigLatinizer


  def piglatinize(text)
    # Check if single word
    if text.split(" ").length == 1
      piglatinize_word(text)
      # Call sentence method if multiple
    else
      piglatinize_sentance(text)
    end

  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    # check if starts with vowel first
    if !consonant?(word[0])
      word += "w"
      #case for words starting with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
      #case for starting with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
      #case for starting with single consonant
    else consonant?(word[0])
      word = word.slice(1..-1) + word.slice(0)
    end
    word += "ay"
  end

  def piglatinize_sentance(sentence)
    sentence.split.collect { |word| piglatinize_word(word)}.join(" ")
  end

end
