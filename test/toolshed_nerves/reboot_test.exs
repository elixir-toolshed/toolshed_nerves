defmodule Toolshed.Nerves.RebootTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "h/1 macro prints doc" do
    use Toolshed
    use Toolshed.Nerves
    assert capture_io(fn -> h(reboot) end) |> String.match?(~r/def reboot/)
  end
end
