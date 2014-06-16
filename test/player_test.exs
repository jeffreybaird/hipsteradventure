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

end
