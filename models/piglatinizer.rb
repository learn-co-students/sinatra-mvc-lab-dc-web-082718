class PigLatinizer

  attr_accessor :input

  # def initialize(input)
  #   @input = input
  # end

  def piglatinize(input)

    split_string = input.split

    split_string.map do |word|
      if word.length == 1
        word + "way"
      elsif word[0] =~ (/[aeiou]/i)
        word + "way"
      elsif word[1] =~ (/[aeiou]/i)
        word[1..-1] + word[0] + 'ay'
      elsif word[2] =~ (/[aeiou]/i)
        word[2..-1] + word[0] +word[1] + 'ay'
      else
        word[3..-1] + word[0] +word[1] + word[2] + 'ay'
      end
    end.join(' ')

  end

end
