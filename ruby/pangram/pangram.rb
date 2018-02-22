require 'pp'

class Pangram
  def self.pangram?(input)
    char_hash = {}
    input.downcase.gsub(/[^a-z]/, '').split('').each do |x|
      char_hash[x] = true
    end

    return char_hash.length == 26
  end
end
