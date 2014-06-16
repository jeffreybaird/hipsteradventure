defmodule Player do

  def new do
    %{}
  end

  def new(player) do
    player
  end

  def name(player) do
    player[:name]
  end

  def add_name(player, name) when is_map(player) do
    new_player = Map.merge(player,%{name: name})
    new(new_player)
  end

end