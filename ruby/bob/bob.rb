class Bob

  def self.hey(input)
    input.strip!

    if input == input.upcase and input.match(/[A-Z]/)
      return "Whoa, chill out!"
    elsif input.match(/[a-z|\s|\.|\d|\!]$/)
      return "Whatever."
    elsif input.match(/\?[\s]*$/)
      return "Sure."
    elsif input.length == 0 or input.match(/[\x00-\x1F\x7F\s]/)
      return "Fine. Be that way!"
    end
  end

end
