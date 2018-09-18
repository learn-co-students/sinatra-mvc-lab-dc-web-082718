
class PigLatinizer
  attr_reader :words

  def piglatinize(words)
    arr = words.split(" ")
    new_arr = arr.map do |word|
      if "aeiouAEIOU".include?(word[0])
        word += "way"
        word
      else
        word += word[0]
        word = word.slice(1..word.length)
        if "aeiouAEIOU".include?(word[0])
          word += "ay"
          word
        else
          word += word[0]
          word = word.slice(1..word.length)
          if "aeiouAEIOU".include?(word[0])
            word += "ay"
            word
          else
            word += word[0]
            word = word.slice(1..word.length)
            word += "ay"
            word
          end
        end
      end
    end
    new_arr.join(" ")
  end




end
