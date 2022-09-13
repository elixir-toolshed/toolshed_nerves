defmodule Toolshed.Nerves.LsmodTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "h/1 macro prints doc" do
    use Toolshed
    use Toolshed.Nerves
    assert capture_io(fn -> h(lsmod) end) |> String.match?(~r/def lsmod/)
  end
end
