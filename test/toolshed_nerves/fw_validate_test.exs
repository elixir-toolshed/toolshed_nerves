defmodule Toolshed.Nerves.FwValidateTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "h/1 macro prints doc" do
    use Toolshed
    use Toolshed.Nerves
    assert capture_io(fn -> h(fw_validate) end) |> String.match?(~r/def fw_validate/)
  end
end
