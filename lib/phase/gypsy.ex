defmodule Phase.Gypsy do

  @doc ~S"""
  This is the entry point for the phase.

  ## Examples

      iex> Phase.Gypsy.play({name: "jeff"})

  """

  def play(player) do
    _part_one(player)
  end

  @doc ~S"""
  Formats the input for usage, when `guess` is a binary it removes
  newline characters and creates an integer.

  ## Examples

      iex> Phase.Gypsy.format_guess "1\n"
      1

  """

  def format_guess(guess) when is_binary(guess) do
    String.strip(guess, ?\n) |> String.to_integer
  end

  def format_guess(guess) when is_number(guess) do
    guess
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
    gy_guess = :random.uniform(5)
    _check_guess(player, format_guess(guess),gy_guess, 0)
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

  def _part_two(player, guess) do
    IO.puts "Congrats #{player.name}, Your guess of #{guess} is correct! Here is your cigarette."
    Player.add_cigarette(player)
  end

end