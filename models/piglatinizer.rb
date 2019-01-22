class PigLatinizer

  def initialize
  end

  # expect(words.piglatinize("pork")).to eq("orkpay")
  # expect(words.piglatinize("I")).to eq("Iway")
  # expect(words.piglatinize("hello")).to eq("ellohay")
  # expect(words.piglatinize("please")).to eq("easeplay")
  def piglatinize(string)
    string.split(" ").each do |word|
      m = word.match(/^[^aeiou]+/i)
      if m
        word.delete_prefix!(m[0])
        word << m[0]
        word << "ay"
      else
        word << "way"
      end
    end.join(" ")
  end


end
