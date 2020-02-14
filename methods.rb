#function that asks for and stores name
def get_name
  puts "Good Afternoon! What is your name?"
  @user_name = gets.strip
end

#function that asks for and stores how much money the user has
def money
  puts "Hi #{@user_name}. How many dollars do you have?"
  @user_money = gets.to_i
  #would like to add an option to remove $ if the user puts one
end

#function that displays list of main dishes and asks them to choose one
def get_main_dish
  puts "#{@user_name}, what main dish would you like today?"
  @main_dishes.each_with_index { |val, index| puts "    #{index + 1}) #{val}  $#{@main_dishes_prices[index]}" }
  @user_main_dish = gets.strip.to_i
  @main_dish_name = @main_dishes[@user_main_dish - 1]
  puts @main_dish_name
  @user_main_price = @main_dishes_prices[@user_main_dish - 1]
  puts "One #{@main_dishes[@user_main_dish - 1]} coming right up!"
end

#function that displays list of side dishes and asks them to choose one [stores as side1]
def first_side
  puts "You can choose 2 sides. What is your first choice?"
  @side_dishes.each_with_index { |val, index| puts "    #{index + 1}) #{val}  $2"}
  @user_first_side = gets.strip.to_i
  @first_side_name = @side_dishes[@user_first_side - 1]
end

#unction that displays list of side dishes and asks them to choose one [stores as side2]
def second_side
  puts "And what would like for your second side?"
  @side_dishes.each_with_index { |val, index| puts "    #{index + 1}) #{val}  $2"}
  @user_second_side = gets.strip.to_i
  @second_side_name = @side_dishes[@user_second_side - 1]
end

#function that repeats back the order
  def repeat_order
    puts "Fantastic! You ordered " + @main_dish_name + " as your main dish, " + @first_side_name + " as your first side, and " + @second_side_name + " as your second side."
  end


#function that gives user their total
def give_total
  @total = @main_dishes_prices[@user_main_dish - 1] + 4
  # return @total
  puts "Your total is $#{@total}"
end

#array of main dishes
@main_dishes = ["Spaghetti & Meatballs","Tuna Poke","Chicken Cordon Bleu","Cheeseburger"]
@main_dishes_prices = [5,7,6,6]

#array of side dishes
@side_dishes = ["Mashed Potatoes","Side Salad","Steamed Broccoli","French Fries","Brown Rice"]



#arrays of nutrition information to be added to the menu
# @main_nutrition = [
#   {cals: 609, carbs: 55, fat: 23}
#   {cals: 370, carbs: 26, fat: 15}
#   {cals: 330, carbs: 13, fat: 15}
#   {cals: 480, carbs: 40, fat: 24}
# ]

# @side_nutrition [
#   {cals: 232, carbs: 48, fat: 2}
#   {cals: 40, carbs: 3, fat: 2}
#   {cals: 100, carbs: 6, fat: 8}
#   {cals: 267, carbs: 33, fat: 6}
#   {cals: 216, carbs: 44, fat: 2}
# ]