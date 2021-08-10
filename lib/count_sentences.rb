require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split_arr = self.split(/[.!?]/)
    new_split_arr = split_arr.filter do |sentence|
      !(sentence.empty?)
    end
    new_split_arr.length
  end
end