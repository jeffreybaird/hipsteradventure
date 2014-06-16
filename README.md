Hipster Adventure
============

To get running

````
git clone git@github.com:jeffreybaird/hipsteradventure.git
cd hipsteradventure
mix compile
mix test
mix run lib/hipsteradventure.ex
````

To add a phase.

Create a new module to the lib/phase directory

Add an incremented draw function to lib/game.ex

Have the draw function call a function called "play" on the name of the new module and pass it the player object

Make sure the new Phase exits out with a player object that has the updated inventory

The terminating draw function prints a statement out to the stdout.
