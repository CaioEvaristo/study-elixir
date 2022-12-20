defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "When a valid file is provided, return the converted list" do
      expected_response = [1, 2, :fizz, 4, :buzz, 7, 8, :fizz, :fizzBuzz, 4, 33334, 5762, 4, 667, :fizzBuzz, :fizz]
      assert FizzBuzz.build("numbers.txt") == expected_response
    end
  end
end
