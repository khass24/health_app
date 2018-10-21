def daily_report
report = []
puts "How many hours did you sleep?"
sleep = gets.chomp.to_i
  if sleep == (7..9)
    report << 3
  elsif sleep == (6..10)
    report << 2
  else
    report << 1
  end

  p report

puts "How many calories did you intake today?"
calories = gets.chomp.to_i
  if calories = (2000..2500)
    report << 3
  elsif calories = (1750..2750)
    report << 2
  else
    report << 1
  end

  p report

puts "How many steps did you take today?"
steps = gets.chomp.to_i.to_i
  if steps >= 10000
    report << 3
  elsif steps >= 6000
    report << 2
  else
    report << 1
  end

  p report

puts "How many hours of relaxation did you get today?"
relax = gets.chomp.to_i
  if relax >= 1
    report << 3
  elsif relax < 1
    report << 1
  end

  p report

(report[0] + report[1] + report[2] + report [3]) / 4
end



puts daily_report