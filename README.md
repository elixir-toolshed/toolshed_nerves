# Toolshed.Nerves

<!-- README START -->

Making the IEx console friendlier one command at a time

To use the helpers, run:

    iex> use Toolshed.Nerves

Add this to your `.iex.exs` to load automatically.

The following is a list of helpers:

  * `cat/1`          - print out a file
  * `cmd/1`          - run a system command and print the output
  * `date/0`         - print out the current date and time
  * `dmesg/0`        - print kernel messages
  * `exit/0`         - exit out of an IEx session
  * `fw_validate/0`  - marks the current image as valid (check Nerves system if supported)
  * `grep/2`         - print out lines that match a regular expression
  * `hex/1`          - print a number as hex
  * `history/0`      - print out the IEx shell history
  * `httpget/2`      - print or download the results of a HTTP GET request
  * `hostname/0`     - print our hostname
  * `ifconfig/0`     - print info on network interfaces
  * `load_term!/1`   - load a term that was saved by `save_term!/2`
  * `log_attach/1`   - send log messages to the current group leader
  * `log_detach/0`   - stop sending log messages to the current group leader
  * `lsof/0`         - print out open file handles by OS process
  * `lsmod/0`        - print out what kernel modules have been loaded
  * `lsusb/0`        - print info on USB devices
  * `multicast_addresses/0` - print out all multicast addresses
  * `nslookup/1`     - query DNS to find an IP address
  * `ping/2`         - ping a remote host (but use TCP instead of ICMP)
  * `qr_encode/1`    - create a QR code (requires networking)
  * `reboot/0`       - reboots gracefully
  * `reboot!/0`      - reboots immediately
  * `save_value/3`   - save a value to a file as Elixir terms (uses inspect)
  * `save_term!/2`   - save a term as a binary
  * `top/2`          - list out the top processes
  * `tping/2`        - check if a host can be reached (like ping, but uses TCP)
  * `tree/1`         - pretty print a directory tree
  * `uptime/0`       - print out the current Erlang VM uptime
  * `uname/0`        - print information about the running system
  * `weather/0`      - get the local weather (requires networking)

<!-- README END -->
