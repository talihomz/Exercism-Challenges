class School

    def initialize
        @db = {}
    end

    def add(name, number)
        @db[number] = [] unless @db[number]
        @db[number] << name
    end

    def students(number)
        @db[number] == nil ? [] : @db[number].sort
    end

    def students_by_grade
        res = @db.map do |k, v|
            { grade: k, students: v.sort }
        end
        res.sort { |x, y| x[:grade] <=> y[:grade] }
    end

end

