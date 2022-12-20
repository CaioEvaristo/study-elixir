defmodule FizzBuzz do
  def build(file_name) do
    case File.read(file_name) do
      {:ok, result} -> handle_file_read(result)
      {:error, reason} -> handle_file_read(reason)
    end
  end

  defp handle_file_read(result) do
    result 
    |> String.split(",") 
    |> Enum.map(&convert_numbers/1)
  end

  defp convert_numbers(element) do 
    element 
    |> String.to_integer() 
    |> evaluate_numbers()
  end

  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzBuzz
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_numbers(number), do: number
end
