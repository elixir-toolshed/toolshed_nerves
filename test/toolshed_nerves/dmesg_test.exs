defmodule Toolshed.Nerves.DmesgTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "h/1 macro prints doc" do
    use Toolshed
    use Toolshed.Nerves
    assert capture_io(fn -> h(dmesg) end) |> String.match?(~r/def dmesg/)
  end
end
