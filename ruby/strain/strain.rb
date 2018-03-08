module Enumerable

    def keep
        res = []
        self.each do |e|
            res.push(e) if yield(e)
        end
        res
    end

    def discard
        res = Array.new(self)
        self.each do |e|
            res.delete(e) if yield(e)
        end
        res
    end

end