  puts "How much do you weigh in pounds?"
  weight = gets.chomp.to_i

  puts "How tall are you in inches?"
  height = gets.chomp.to_i

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What is your sex?"
  sex = gets.chomp
  sex.downcase

case sex
when "m"
    BMR = 66 + (6.2 * weight) + (12.7 * height) - (6.76 * age)
    puts "Your BMR is #{BMR}"
else "f"
    BMR = 655.1 + (4.35 * weight) + (4.7 * height) - (4.7 * age)
    puts "Your BMR is #{BMR}"
end

puts "How many active calories do you burn a day on average?"
active = gets.chomp.to_i

TDEE = BMR + active

puts "What is your goal? Lose weight/Maintain/Gain muscle"
goal = gets.chomp.downcase

case goal
when "lose weight"
  TDEEfactor = 0.9
when "maintain"
  TDEEfactor = 1.0
when "gain muscle"
  TDEEfactor = 1.1
end

weeklyCalories = (7 * TDEE)*(TDEEfactor).round
dailyCalories = (weeklyCalories/7).round

puts "Your weekly calorie goal is #{weeklyCalories}. Your daily calorie goal is #{dailyCalories}."
