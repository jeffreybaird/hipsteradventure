defmodule Game do

  def draw(0, player) do
    updated_player = Phase.Introduction.play(player)
    draw(1,updated_player)
  end

  def draw(1,player) do
    updated_player = Phase.Gypsy.play(player)
    draw(2,updated_player)
  end

  def draw(2, _) do

  end


end
