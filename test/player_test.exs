defmodule PlayerTest do
  use ExUnit.Case

  import Player

  test "new with no args should return" do
    assert is_map(new)
  end

  test "new with a player should return a map of the player it receives" do
    player_passed = add_name(new, "jeff")
    player = new(player_passed)
    assert player == %{name: "jeff"}
  end

  test "returns a players name when asked" do
    player = add_name(new, "jeff")
    assert player.name == "jeff"
  end

  test "returns the number of cigarettes when asked" do
    player = add_name(new, "jeff")
    player_with_cig = Player.add_cigarette(player)
    assert Player.cigarettes(player_with_cig) == 1
  end

end
