def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
  # code #deal_card here
end

def display_card_total(card_total)
  "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(card_total)
  # code #end_game here
  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
  return card_total
end

def hit?(current_total)
  # code hit? here
  prompt_user
  get_user_input
  if get_user_input == 'h'
    new_card = deal_card
    current_total += new_card
  elsif get_user_input == 's'
    current_total = current_total
  else
    invalid_command
    prompt_user
  end
  return current_total
end

def invalid_command
  "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  counter = initial_round
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    hit?(counter)
  elsif user_input == 's'
    prompt_user
  else
    invalid_command
  end
  until counter >= 21
    counter = hit?(counter)
  end
  if counter > 21
    end_game(counter)
  end
end
