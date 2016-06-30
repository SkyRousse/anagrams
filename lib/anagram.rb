class String
  define_method(:anagram) do |word_argument|
    target_word = self
    anagram_flag = true
    target_word = target_word.split(//).sort!
    word_argument = word_argument.split(//).sort!
    counter = word_argument.length
    until counter == 0
      counter -= 1
      if word_argument[counter] != target_word[counter]
        anagram_flag = false
      end
    end
    anagram_flag
  end
end
