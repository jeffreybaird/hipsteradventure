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

  def cigarettes(player) do
    player[:cigarettes]
  end

  def add_name(player, name) when is_map(player) do
    stripped_name = String.strip(name,?\n)
    new_player = Map.merge(player,%{name: stripped_name})
    new(new_player)
  end

  def add_cigarette(player) do
    unless is_number(cigarettes(player)) do
      Map.merge(player,%{cigarettes: 1})
    else
      add_cigarette(player, 1)
    end
  end

  def add_cigarette(player, 1) do
    number_of_cigarettes = cigarettes(player) + 1
    new_player = Map.merge(player,%{cigarettes: number_of_cigarettes})
  end

end