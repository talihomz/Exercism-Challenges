require 'date'

class Gigasecond
  def self.from(input)
    res = input.to_i + 10 ** 9
    return Time.at(res).utc
  end
end
