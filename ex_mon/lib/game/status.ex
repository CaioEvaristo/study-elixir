defmodule ExMon.Game.Status do

    def print_round_message(%{status: :started} = info) do
        IO.puts("\n ===== The game is started =====")
        IO.inspect(info)
        IO.puts("----------------------------------")
    end

    def print_round_message(%{status: :continue, turn: player} = info) do
        IO.puts("\n ===== Its #{player} Turn =====")
        IO.inspect(info)
        IO.puts("----------------------------------")
    end

    def print_round_message(%{status: :game_over} = info) do
        IO.puts("\n ===== Game Over =====")
        IO.inspect(info)
        IO.puts("----------------------------------")
    end

    def print_wrong_move_message(move) do
        IO.puts("\n ===== Invalid move #{move} =====")
    end

    def print_move_message(:computer, :attack, damage) do
        IO.puts("\n ===== Tha player attack computer and damage is #{damage} =====")
    end

    def print_move_message(:player, :attack, damage) do
        IO.puts("\n ===== Tha computer attack player and damage is #{damage} =====")
    end

    def print_move_message(player, :heal, life) do
        IO.puts("\n ===== Tha #{player} heal #{life} of life =====")
    end
end
