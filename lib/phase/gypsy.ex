defmodule Phase.Gypsy do

  def play(player) do
    _part_one(player)
  end

  def _part_one(player) do
    IO.puts "A women who seems down on her luck approaches you."
    IO.puts "She motions for you to come closer."
    IO.puts "She opens her hand, in it, is a cigarette."
    IO.puts "This cigarette is yours if you can guess a number between 1 and 5."
    _guess_sequence(player)
  end

  def _guess_sequence(player) do
    guess = IO.gets "What is your guess?"
    _check_guess(player, format_guess(guess),:random.uniform(5), 0)
  end

  def _check_guess(player, guess, gypsy_guess, 0) do
    _decide_gypsy_fate(player, guess, gypsy_guess,0)
  end

  def _check_guess(player, guess, gypsy_guess, n) do
    guess_again = IO.gets "Guess again! Input your guess."
    new_number = n + 1
    _decide_gypsy_fate(player, format_guess(guess_again), gypsy_guess, new_number)
  end

  def _decide_gypsy_fate(player, guess, gypsy_guess, n) do
    if guess == gypsy_guess do
      _part_two(player, guess)
    else
      _check_guess(player,guess, gypsy_guess ,n+1)
    end
  end

  def format_guess(guess) when is_binary(guess) do
    String.strip(guess, ?\n) |> String.to_integer
  end

  def format_guess(guess) when is_number(guess) do
    guess
  end

  def _part_two(player, guess) do
    IO.puts "Congrats #{player.name}, Your guess of #{guess} is correct! Here is your cigarette."
    Player.add_cigarette(player)
  end

end