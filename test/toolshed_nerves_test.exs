defmodule Toolshed.NervesTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "__using__ imports helper functions" do
    use Toolshed.Nerves

    assert __ENV__.functions[Toolshed] == [
             {:cat, 1},
             {:cmd, 1},
             {:date, 0},
             {:grep, 2},
             {:hex, 1},
             {:history, 0},
             {:history, 1},
             {:hostname, 0},
             {:httpget, 1},
             {:httpget, 2},
             {:ifconfig, 0},
             {:load_term!, 1},
             {:log_attach, 0},
             {:log_attach, 1},
             {:log_detach, 0},
             {:lsof, 0},
             {:lsusb, 0},
             {:multicast_addresses, 0},
             {:nslookup, 1},
             {:ping, 1},
             {:ping, 2},
             {:qr_encode, 1},
             {:save_term!, 2},
             {:save_value, 2},
             {:save_value, 3},
             {:top, 0},
             {:top, 1},
             {:tping, 1},
             {:tping, 2},
             {:tree, 0},
             {:tree, 1},
             {:uptime, 0},
             {:weather, 0}
           ]

    assert __ENV__.functions[Toolshed.Nerves] == [
             {:dmesg, 0},
             {:exit, 0},
             {:fw_validate, 0},
             {:lsmod, 0},
             {:reboot, 0},
             {:reboot!, 0},
             {:uname, 0}
           ]
  end
end
