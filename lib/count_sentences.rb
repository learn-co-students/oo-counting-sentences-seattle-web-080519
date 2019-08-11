require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    string_array = self.split(/[.!?]/)
    string_array.reject! { |element| element.nil? || element == "" }
    return string_array.count
  end
end

ex1 = "Hi."
ex2 = "hello. How are you?"
ex3 = "Hi!"
ex4 = "hi"

p ex4.sentence?
p ex4.question?
p ex4.exclamation?

# binding.pry
# 0