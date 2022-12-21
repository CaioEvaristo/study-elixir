defmodule ExMon.Game.Actions.Attack do
    @move_avg_power 18..25
    @move_random_power 10..35

    def attack_oponnent(oponnent, move) do
        damage = calculate_power(move)
    end

    defp calculate_power(:move_avg), do: Enum.random(@move_avg_power)
    defp calculate_power(:move_random), do: Enum.random(@move_random_power)
end