def create_question(player)
  x = rand(1..20)
  y = rand(1..20)
  puts "#{player.name}: What does #{x} plus #{y} equal?"

  x + y
end

def run_question(player)
  correct_answer = create_question(player)

  print "> "
  answer = gets.chomp.to_i

  if correct_answer == answer
    puts "Correct"
  else
    player.remove_life
    puts "Wrong!"
  end
end