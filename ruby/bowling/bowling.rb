require 'pp'

class Game
  class BowlingError < StandardError
  end

  # 3, 3, 6, 4, 5
  # [3, 3]
  # [6, 4, 5]
  # [5]

  @spare = 1
  @strike = 2

  def initialize
    @frames = {}
    @current_frame = []
  end

  def roll pins
    # validations
    raise BowlingError if pins < 0 or pins > 10
    raise BowlingError unless @frames[10].nil?

    if is_strike?

    elsif is_spare?
      
    elsif is_full?
      @frames[@frames.length + 1] = Array.new(@current_frame)
      @current_frame.clear
      @current_frame << pins
    elsif is_last_throw?
      @current_frame << pins
      @frames[@frames.length + 1] = Array.new(@current_frame)
    else
      @current_frame << pins
    end
  end

  def is_strike?
    @current_frame[0] == 10
  end

  def is_spare?
    frame_sum(@current_frame) == 10 and @current_frame.length == 2
  end

  def is_full?
    raise BowlingError if frame_sum(@current_frame) > 10
    @current_frame.length == 2
  end

  def is_last_throw?
    @frames.length == 2 and !@current_frame.empty?
  end

  def score
    pp @frames
    # raise BowlingError if @frames.empty? || @frames[10].nil?
    
    res = 0
    @frames.each { |k, v| res += frame_sum(v) }
    res
  end

  def frame_sum frame
    frame.inject(0) do |sum, item| sum + item end 
  end
end

 #   all_frames = []
  #   skipped = false

  #   # build the frames
  #   @pins.each_with_index do |item, index|
  #     if skipped
  #       skipped = false
  #     elsif item == 10
  #       all_frames << [10]
  #     else
  #       all_frames << @pins[index, 2]
  #       skipped = true
  #     end
  #   end

  #   result = []
  #   max_frame_index = all_frames.length - 1
  #   # build bowling frame scorecard
  #   all_frames.each_with_index do |frame, index|
  #     if frame[0] == 10
  #       next if index >= max_frame_index
  #       # extract the next frame
  #       next_frame = Array.new(all_frames[index + 1])

  #       if next_frame[0] == 10
  #         next if (index + 2) > max_frame_index
  #         next_frame << all_frames[index + 2][0]
  #       end

  #       result << frame + next_frame
  #     elsif frame_sum(frame) == 10
  #       next if (index + 1) > max_frame_index
  #       result << (Array.new(frame) << all_frames[index + 1][0])
  #     else
  #       next if index >= max_frame_index and frame_sum(all_frames[index - 1]) == 10
  #       result << frame
  #     end
  #   end   

  #   result