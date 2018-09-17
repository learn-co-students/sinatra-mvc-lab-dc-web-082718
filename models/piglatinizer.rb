class PigLatinizer

  def piglatinize(input, first_run = true)
    if input.include?(" ")
      @words = input.split(" ").collect do |word|
        piglatinize(word)
      end
      return @words.join(" ")

    elsif /[AEIOU]/i.match(input[0]) && first_run
      @piglatin = input + "w"
    elsif /[^AEIOU]/i.match(input[0])
      first_run = false
      @piglatin = input[1..input.length] + input[0]
      piglatinize(@piglatin, first_run)
    end
    @piglatin + "ay"
  end

end
