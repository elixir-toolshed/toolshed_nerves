defmodule Toolshed.Nerves do
  @moduledoc File.read!(Path.expand("./README.md"))
             |> String.split("<!-- README START -->")
             |> Enum.at(1)
             |> String.split("<!-- README END -->")
             |> Enum.at(0)

  defmacro __using__(_) do
    quote do
      # Toolshed module is load but not already imported
      if unquote(Code.ensure_loaded?(Toolshed) and is_nil(__CALLER__.functions[Toolshed])) do
        IO.warn("""
        Toolshed is required to be used explicitly before Toolshed.Nerves is used. Instead of:

            use Toolshed.Nerves

        do:

            use Toolshed
            use Toolshed.Nerves
        """)
      end

      import Toolshed.Nerves

      # If module docs have been stripped, then don't tell the user that they can
      # see them.
      help_text =
        case Code.fetch_docs(Toolshed.Nerves) do
          {:error, _anything} -> ""
          _ -> " Run h(Toolshed.Nerves) for more info."
        end

      Toolshed.Autocomplete.set_expand_fun()

      IO.puts([
        IO.ANSI.color(:rand.uniform(231) + 1),
        "Toolshed.Nerves",
        IO.ANSI.reset(),
        " imported.",
        help_text
      ])
    end
  end

  defdelegate dmesg(), to: Toolshed.Nerves.Dmesg
  defdelegate exit(), to: Toolshed.Nerves.Exit
  defdelegate fw_validate(), to: Toolshed.Nerves.FwValidate
  defdelegate lsmod(), to: Toolshed.Nerves.Lsmod
  @spec reboot!() :: no_return()
  defdelegate reboot!(), to: :"Elixir.Toolshed.Nerves.Reboot!"
  defdelegate reboot(), to: Toolshed.Nerves.Reboot
  defdelegate uname(), to: Toolshed.Nerves.Uname
end
