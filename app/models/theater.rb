class Theater
  attr_accessor :title
  attr_reader :city
  @@all =[]

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def performances
    Performance.all.select do |performans|
      performans.theater == self
    end
  end

  def musicals
    self.performances.map do |performans|
      performans.musical
    end
  end
end
