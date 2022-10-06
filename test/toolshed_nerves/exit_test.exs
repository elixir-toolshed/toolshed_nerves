defmodule Toolshed.Nerves.ExitTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "h/1 macro prints doc" do
    use Toolshed.Nerves
    assert capture_io(fn -> h(exit) end) |> String.match?(~r/def exit/)
  end
end
