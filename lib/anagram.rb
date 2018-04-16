# Your code goes here!

class Anagram
  attr_accessor :word

  def initialize(word)
    @word=word
  end

  def split_sort(text)
    text.split("").sort
  end

  def match (anagram_array)
    match_array=[]
    anagram_array.each do |anagram|
      #I don't know if it matters but I decided to create a
      #method, split_sort that splits a string into an array
      #of letters and then sorts the letters alphabetically
      #if @word.split("").sort == anagram.split("").sort
      if split_sort(@word)==split_sort(anagram)
        match_array<<anagram
      end
    end
    match_array
  end

end
