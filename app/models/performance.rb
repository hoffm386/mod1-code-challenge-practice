class Performance
  attr_accessor :date, :musical, :theater
  @@all = []
  def initialize(date, musical, theater)
    @date = date
    @musical = musical
    @theater = theater
    @@all << self
  end

  def self.all
    @@all
  end

  def hometown_setting?
    if @musical.city == @theater.city
      return true
    else
      return false
    end
  end
end
