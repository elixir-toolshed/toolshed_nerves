defmodule Toolshed.Nerves.UnameTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "h/1 macro prints doc" do
    use Toolshed
    use Toolshed.Nerves
    assert capture_io(fn -> h(uname) end) |> String.match?(~r/def uname/)
  end
end
