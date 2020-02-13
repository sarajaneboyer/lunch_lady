
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
    end 
  
  get_order

  #function that gives customer their total, it adds up totals for all orders
  totals = [0]
  totals << give_total
  sum = totals.inject(:+)
  puts "Your total is $#{sum}"
  
  
  puts "Would you like to place another order? Yes or no?"
  answer = gets.strip.downcase
  if answer == "yes"
    get_order
  else
    puts "Enjoy your lunch!"
  end

end

app