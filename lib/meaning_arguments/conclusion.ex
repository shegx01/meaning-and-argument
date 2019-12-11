defmodule MeaningArguments.Astronomer do
  defstruct [:name]

  @type t :: __MODULE__
  @spec new() :: {:ok, Astronomer.t}
  def new(), do: {:ok, %__MODULE__{}}
  def create({:ok, %__MODULE__{} = value }, param) when is_bitstring(param)  do
    astro = value |> Map.put(:name, param)
    {:ok, astro}

  end

  @spec is_a?(any) :: boolean
  def is_a?({:ok, %__MODULE__{}}), do: true
  def is_a?(_), do: false

end
