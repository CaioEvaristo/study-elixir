defmodule ExMon.Game.Status do
    alias ExMon.Game

    def print_round_message() do
        IO.puts("\n ===== The game is started =====")
        IO.inspect(Game.info())
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
end
