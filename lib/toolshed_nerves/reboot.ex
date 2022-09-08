defmodule Toolshed.Nerves.Reboot do
  @moduledoc ""

  @doc """
  Shortcut to reboot a board. This is a graceful reboot, so it takes some time
  before the real reboot.
  """
  @spec reboot() :: no_return()
  defdelegate reboot(), to: Nerves.Runtime
end
