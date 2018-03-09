class BeerSong

    def initialize
    end

    def verses(finish, start)
        result = []
        (start..finish).to_a
            .reverse.collect do |item| 
                result << verse(item)
            end
        
        result.join("\n")
    end

    def verse(number)
        if(number >= 2)
        <<-TEXT
#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number - 1} bottle#{number == 2 ? '' : 's'} of beer on the wall.
TEXT
        elsif(number == 1)
        <<-TEXT
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
TEXT
        elsif(number == 0)
        <<-TEXT
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
TEXT
        end
    end
end