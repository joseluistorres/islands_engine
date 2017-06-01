defmodule IslandsEngine.Coordinate do
  alias __MODULE__
  @enforce_keys [:row, :col]
  defstruct [:row, :col]

  @board_range 1..10

  def new(row, col) when row in(@board_range) and col in(@board_range), do:
    {:ok, %Coordinate{row: row, col: col}}

  def new(_row, _col), do: {:error, :invalid_coordinate}



  # defstruct in_island: :none, guessed?: false
  # alias IslandsEngine.Coordinate

  # def start_link() do
  #   Agent.start_link(fn -> %Coordinate{} end)
  # end

  # def guessed?(coordinate) do
  #   Agent.get(coordinate, fn state -> state.guessed? end)
  # end

  # def island(coordinate) do
  #   Agent.get(coordinate, fn state -> state.in_island end)
  # end

  # def in_island?(coordinate) do
  #   case island(coordinate) do
  #     :none -> false
  #     _ -> true
  #   end
  # end

  # def hit?(coordinate) do
  #   in_island?(coordinate) && guessed?(coordinate)
  # end
end