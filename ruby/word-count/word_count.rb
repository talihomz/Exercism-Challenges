class Phrase

  attr_reader :word_count

  def initialize(sentence)

    @word_count = sentence.downcase
      .split(/[^a-zA-Z\'\d]/)
      .select { |x| x.length > 0 }
      .collect { |word| word.gsub(/(^\')|(\'$)/, '') }
      .inject({}) do |hash, word|
        temp = hash
        temp[word] ? temp[word] += 1 : temp[word] = 1
        hash = temp
      end

  end

end
