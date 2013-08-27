# Write two classes. One which will store a word and be able to tell me if the word is a palindrome or not. The other class will store a dictionary of words. I should be able to query the dictionary for a word and it will return the definition and whether or not the word is a palindrome.

# So I should be able to load the dictionary with

# tree: a plant having a permanently woody main stem or trunk,ordinarily growing to a considerable height, and usuallydeveloping branches at some distance from the ground
# house: a building in which people live; residence for human beings.
# racecar: racing car, is a palindrome
# nosirawayapapayawarison unknown definition, is a palindrome

class Word

  attr_accessor :text, :palindrome

  def initialize(text) #text is a string
    @text = text
  end

  def is_palindrome?
    text == text.reverse
  end

end

class Dictionary

  @@word_bank = {
    "tree" => "a plant having a permanently woody main stem or trunk, ordinarily growing to a considerable height, and usually developing branches at some distance from the ground",
    "house" => "a building in which people live; residence for human beings.",
    "racecar" => "racing car",
    "nosirawayapapayawarison" => "unknown definition"
  }

  def self.lookup(word) #word is a Word object
    definition = @@word_bank[word.text] || "Unknown definition"
      if word.is_palindrome?
        pal_response = "Oh, and by the way, it's a palindrome."
      else
        pal_response = "And don't even think it's a palindrome."
      end

    puts "#{word.text} - #{definition}; #{pal_response}"

  end

  # def self.format_output
  #   puts "#{self.text} - #{self.definition}"
  #   puts "testing this #{@definition}"
  # end

end


