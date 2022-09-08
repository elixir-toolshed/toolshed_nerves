defmodule :"Elixir.Toolshed.Nerves.Reboot!" do
  @moduledoc ""

  @doc """
  Reboot immediately without a graceful shutdown. This is for the impatient.
  """
  @spec reboot!() :: no_return()
  def reboot!() do
    :erlang.halt()
  end
end
