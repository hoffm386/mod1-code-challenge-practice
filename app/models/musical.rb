class Musical
  attr_accessor :name
  attr_reader :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def perform_in_theater(theater, date)
    Performance.new(date, theater, self)
  end

  def performances
    Performance.all.select do |performans|
      performans.musical == self
    end
  end

  def theaters
    self.performances.map do |performans|
      performans.theater
    end
  end
end#end of class
