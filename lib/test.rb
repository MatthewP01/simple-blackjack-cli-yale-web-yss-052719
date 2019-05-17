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