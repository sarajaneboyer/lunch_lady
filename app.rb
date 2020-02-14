
require_relative 'methods'

def app
  puts "~~~~  Welcome to Ruby's Diner  ~~~~"
  get_name
  money
  
  def get_order
      get_main_dish
      first_side
      second_side
      repeat_order

      def verify_order
        puts "Does this sound right?"
        verify = gets.strip.downcase
        if verify != "yes"
          puts "Oops! Let's try again."
          get_order
        end
      end
  
       verify_order
  
       give_total
      #trying to create an array of totals for orders with multiple meals to give a combined total
      #can't get a loop that doesn't stop after 2 iterations with nested methods
      #try loop do and break with an else
  #   totals = [0]
  #   totals << give_total
  #   sum = totals.inject(:+)
  #   puts "Your total is $#{sum}"
  #   puts "Enjoy your lunch!"
end
  get_order
  
      puts "Would you like to place one more order? Yes or no?"
      answer = gets.strip.downcase
      if answer == "yes"
        get_order
      end
  

  puts "Enjoy your lunch!"
end

app