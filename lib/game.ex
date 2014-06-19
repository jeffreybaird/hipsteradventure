defmodule Game do

  @moduledoc """
  Handles the main draw functions for the application
  """
  def draw(0, player) do
    updated_player = Phase.Introduction.play(player)
    draw(1,updated_player)
  end

  def draw(1,player) do
    updated_player = Phase.Gypsy.play(player)
    draw(2,updated_player)
  end

  def draw(2, player) do
    IO.puts "#{player.name}, you have ended the game with #{player.cigarettes} cigarettes"
  end


end
