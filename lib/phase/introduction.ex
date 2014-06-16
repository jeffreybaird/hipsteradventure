defmodule Phase.Introduction do

  def title do
    IO.puts "Hipster Adventure\n"
    IO.puts "--------------------\n\n"
  end

  def opening do
    _ = IO.gets "You wake up on a street corner.\nIt is drizzling rain.\nYou see a sign that says Portland (Click enter)"
  end

  def greeting(player) do
    IO.puts "Hello #{Player.name(player)}"
  end

  def play(player) do
    title
    opening
    name = IO.gets "What is your name? "
    updated_player = Player.add_name(player, name)
    greeting(updated_player)
    updated_player
  end

end