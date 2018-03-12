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
        sum + item.inject(0) { |inner_sum, inner_item| inner_sum + inner_item }
       end 
    end

    def get_frame_score

        all_frames = []
        skipped = false

        # build the frames
        @pins.each_with_index do |item, index|
            if skipped
                skipped = false
            elsif item == 10
                all_frames << [10]
            else
                all_frames << @pins[index, 2]
                skipped = true
            end
        end

        result = []
        # build bowling frame scorecard
        begin  # change this dirty hack
            all_frames.each_with_index do |frame, index|
                if frame[0] == 10
                    next_frame = Array.new(all_frames[index + 1])
                    if next_frame[0] == 10
                        next_frame << all_frames[index + 2][0]
                    end
                    result << frame + next_frame
                elsif frame_sum(frame) == 10
                    result << (frame << all_frames[index + 1][0])
                else
                    result << frame
                end
            end
        rescue

        end

        # print result
        result
    end

    def frame_sum frame
        frame.inject(0) do |sum, item| sum + item end 
    end
end
