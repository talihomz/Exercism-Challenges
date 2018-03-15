require 'pp'

class Game
  class BowlingError < StandardError
  end

  def initialize
    @frames = {}
    @current_frame = []
  end

  def roll pins
    # validations
    raise BowlingError if pins < 0 or pins > 10
    raise BowlingError unless @frames[10].nil? 

    # 10, 5, 3, 0

    # []   s   => f
    # [10] s   => f
    # [10, 5]  => f
    # [10,5,3] => 

    if is_strike?
      @current_frame << pins
      @frames[@frames.length + 1] = Array.new(@current_frame)
      @current_frame.shift
    elsif is_spare?
      @current_frame << pins
      @frames[@frames.length + 1] = Array.new(@current_frame)
      @current_frame.clear
      @current_frame << pins
    elsif is_full?
      @frames[@frames.length + 1] = Array.new(@current_frame)
      @current_frame.clear
      @current_frame << pins
    elsif is_last_throw?
      @current_frame << pins
      @frames[@frames.length + 1] = Array.new(@current_frame) unless is_spare?
    else
      @current_frame << pins
    end
  end

  def is_strike?
    @current_frame.length == 2 and @current_frame.first == 10
  end

  def is_spare?
    frame_sum(@current_frame) == 10 and @current_frame.length == 2
  end

  def is_full?
    raise BowlingError if is_strike? && frame_sum(@current_frame) > 10 
    @current_frame.length == 2 && !is_strike?
  end

  def is_last_throw?
    @frames.length == 9 and !@current_frame.empty?
  end

  def is_last_frame?
    @frames.length == 9
  end

  def score
    raise BowlingError if @frames.empty? && @frames.length != 10
    
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