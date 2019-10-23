require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  dealt_card = rand(1..11)
  dealt_card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  hand = card1 + card2
  display_card_total(hand)
  hand
end

def hit?(card_total)
  prompt_user
  response = get_user_input

  if response == "s"

  elsif response == "h"
    new_card = deal_card
    card_total += new_card

  else
    invalid_command
    prompt_user
    response = get_user_input
  end

  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  present_hand = initial_round
  until hit?(present_hand) > 21
    present_hand = hit?(present_hand)
    display_card_total(present_hand)
  end
end_game

end
