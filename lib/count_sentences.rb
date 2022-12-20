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

    pp self

    new_array = self.split(/\.|\?|\!/)
    pp new_array.filter {|sent| !sent.empty?}.length

  end
end

"Hello world!!!!! My Name is Harold. I wouldn't like to be your friend. Unless?".count_sentences