defmodule Example do

  @doc """
  Fibonacci numbers
  0, 1, 1, 2, 3, 5, 8, ...
    iex> Example.fibonacci(0)
    0
    iex> Example.fibonacci(1)
    1
    iex> Example.fibonacci(2)
    1
    iex> Example.fibonacci(5)
    5
  """
  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(n) when n>1, do: fibonacci(n-1) + fibonacci(n-2)
# When n>1 is a Guard
end
