require 'pp'

class Game
  attr_reader :current_frame

  class BowlingError < StandardError
  end

  def initialize
    @frames = {}
    @current_frame = []
  end

  def roll(pins)
    # validations
    raise BowlingError if (pins < 0) || (pins > 10)
    raise BowlingError unless @frames[10].nil?

    if is_strike?
      @current_frame << pins
      @frames[@frames.length + 1] = Array.new(@current_frame)
      @current_frame.shift
    elsif is_spare?
      @current_frame << pins
      @frames[@frames.length + 1] = Array.new(@current_frame)
      @current_frame.clear
      @current_frame << pins
    elsif is_last_frame?
      @current_frame << pins
      pp @current_frame
      raise BowlingError if frame_sum(@current_frame) > 10 && @current_frame.first != 10
      @frames[@frames.length + 1] = Array.new(@current_frame) unless is_spare? || is_strike?
    elsif is_full?
      @frames[@frames.length + 1] = Array.new(@current_frame)
      @current_frame.clear
      @current_frame << pins
    else
      @current_frame << pins
      raise BowlingError if frame_sum(@current_frame) > 10 && !is_strike?
    end
  end

  def is_strike?
    (@current_frame.length == 2) && (@current_frame.first == 10)
  end

  def is_spare?
    (frame_sum(@current_frame) == 10) && (@current_frame.length == 2)
  end

  def is_full?
    raise BowlingError if is_strike? && frame_sum(@current_frame) > 10
    @current_frame.length == 2 && !is_strike?
  end

  def is_last_frame?
    @frames.length >= 9
  end

  def score
    raise BowlingError if @frames.empty? || @frames.length != 10

    res = 0
    @frames.each { |_k, v| res += frame_sum(v) }
    res
  end

  def frame_sum(frame)
    frame.inject(0) { |sum, item| sum + item }
  end
end
