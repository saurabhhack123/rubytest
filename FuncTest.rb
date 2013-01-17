require "D:/ruby/Funct"

include Funct

puts "Performing filter on [1,2,3,4] "

filter_result = [1,2,3,4].filter { |n|  n%2==0 }

puts filter_result

puts "Performing find on [1,2,3,4]"

find_result = [1,2,3,4].find {|n| n%2==0}

puts find_result




