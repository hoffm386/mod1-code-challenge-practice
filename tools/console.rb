require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Code Goes Here
musical01 = Musical.new("Occean_music", "Seattle")
musical02 = Musical.new("Volcano_music", "Woodinville")
musical03 = Musical.new("Winery_music", "Redmond")

theater01 = Theater.new("Theater One", "Seattle")
theater02 = Theater.new("Theater two", "Kirkland")
theater03 = Theater.new("Theater Three", "Bothel")

performance01 = Performance.new("Sep 09, 2019", musical01, theater01)#same city
performance02 = Performance.new("Dec 21, 2019", musical02, theater03)
performance03 = Performance.new("Jan 19, 2019", musical03, theater02)

#note: pry did not output methods - theater03.musicals in pry cause error
puts performance01.hometown_setting?
puts performance02.hometown_setting?

puts musical01.perform_in_theater(theater01, "sep 10")
puts musical01.performances
puts musical02.theaters

puts theater01.performances
puts theater03.musicals
Pry.start
