def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  
  if user_input == "h"
    new_card = deal_card
    card_total += new_card
    card_total
  
  elsif user_input == 's'
    card_total
  
  else
    invalid_command
  end
end

def invalid_command
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # welcome
  # initial_round
  # hit?
  # display_card_total UNTIL card_total > 21, then runs the end_game method
  welcome
  sleep(0.5)
  card_total = initial_round
  display_card_total
  
  until card_total > 21
    card_total = hit?(card_total)
    
  end
  end_game
end
    
