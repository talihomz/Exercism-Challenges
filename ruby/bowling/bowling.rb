class Game
    attr_reader :rolls

    def initialize
        @pins = []
    end

    def roll pins
        @pins << pins
    end

    def score
       get_frame_score.inject(0) do |sum, item|
        sum + item.inject { |inner_sum, inner_item| inner_sum + inner_item }
       end 
    end

    def get_frame_score
        # input [10, 5, 5, 9, 0]
        # output
        # [
        #     [10, 5, 5],
        #     [5, 5, 9],
        #     [5, 9]  
        #     [9, 0]
        # ]
        res = []
        current_frame = []
        @pins.each_with_index do |item, index|
            if(item == 10)
                
            else    

            end

            
        end
    end
end

# 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6
# 1 => 3,6
# 2 => 3,6
