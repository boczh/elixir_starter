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

@doc """
  Calculate areas of different shapes
  iex> Example.area(:ellipse, 2, 3)
  18.84955592153876
  iex> Example.area(:rectangle,2,3)
  6
  iex> Example.area(:triangle,2,3)
  3.0
  """
  def area(:ellipse, a, b) do
  :math.pi * a * b
  end
  def area(:rectangle, a, b) do
    a * b
  end
  def area(:triangle, a, b) do
    0.5 * a * b
  end
end
