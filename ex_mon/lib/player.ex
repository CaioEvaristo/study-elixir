defmodule ExMon.Player do
    @required_keys [:life, :name, :move_random, :move_avg, :move_heal]
    @max_life 100

    @enforce_keys @required_keys 

    defstruct @required_keys

    def build(name, move_avg, move_random, move_heal) do
        %ExMon.Player{
            life: @max_life,
            move_random: move_random,
            move_avg: move_avg,
            move_heal: move_heal,
            name: name
        }
    end
end
