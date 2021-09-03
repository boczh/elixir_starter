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

@doc """
  Plane seat
  iex> Example.seat("BFFFBBFRRR")
  # %{row: 70, column: 7}
  # iex> Example.seat("FFFBBBFRRR")
  # row 14, column 7
  # iex> Example.area("BBFFBBFRLL")
  # row 102, column 4
  # iex> Example.area("BBFFBBFRLLLL")
  # Format error
  """
  def seat(seatid) do
  # if(length(to_charlist(seatid)) == 10) do
  #   row=to_charlist(String.slice(seatid, 0..6))
  #   column=to_charlist(String.slice(seatid, 7..9))
  #   right = fn x -> x == 'R' end
  #   left = fn x -> x == 'L' end
  #   middle = fn x,y -> ((y-x)/2 + x) end
  #   upper = fn z,p -> trunc(middle.(z,p))+1 end
  #   upperhalf = [upper.(z,p) , p]
  #   truncate = trunc(middle.(0,127))
  # else IO.puts("Format error")
  end

  @doc """

    iex> Example.mid(0..127, 'F')
    0..63
  """
  def mid(seat_range, 'F') do
  middle = fn x,y -> ((y-x)/2 + x) end
  midv = trunc(middle.(seat_range.first,seat_range.last))
  range=seat_range.first..midv
  end

  def mid(seat_range, 'B') do
  middle = fn x,y -> ((y-x)/2 + x) end
  midv = trunc(middle.(seat_range.first,seat_range.last))
  range=midv+1..seat_range.last
  end

  def row(seat_range) do
    Enum.reduce(seat_range, 0, mid() end)
  end


end
