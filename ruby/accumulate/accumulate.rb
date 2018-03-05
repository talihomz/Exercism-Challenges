
class Array

    def accumulate
        self.map do |item|
            item = yield(item)
        end
    end

end