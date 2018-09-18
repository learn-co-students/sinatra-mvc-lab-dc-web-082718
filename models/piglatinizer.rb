class PigLatinizer



    def piglatinize(phrase)
        if phrase.split(" ").length > 1
            phrase = piglatinize_phrase(phrase)
        else
            phrase = piglatinize_word(phrase)
        end
        puts phrase
        phrase

    end



    def piglatinize_word(word)
        vowels = ["a","A","E","e","i","I","o","O","u","U"]
        # binding.pry
        if vowels.include?(word[0])
            word += "w"
        elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
            first_letter = word.slice!(0..2)
            word += first_letter
        elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
            first_letter = word.slice!(0..1)
            word += first_letter
        else
            first_letter = word.slice!(0)
            word += first_letter
        end
        word += "ay"
        word
    end

    def piglatinize_phrase(phrase)
        phrase.split.collect {|word| piglatinize_word(word)}.join(" ")
    end

end
