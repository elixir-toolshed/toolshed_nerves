# Toolshed.Nerves

[![CircleCI](https://circleci.com/gh/elixir-toolshed/toolshed_nerves.svg?style=svg)](https://circleci.com/gh/elixir-toolshed/toolshed_nerves)
[![Hex version](https://img.shields.io/hexpm/v/toolshed_nerves.svg "Hex version")](https://hex.pm/packages/toolshed_nerves)

<!-- README START -->

Making the IEx console friendlier one command at a time

To use the helpers, run:

    iex> use Toolshed
    iex> use Toolshed.Nerves

Add this to your `.iex.exs` to load automatically.

The following is a list of helpers:

  * `dmesg/0`        - print kernel messages
  * `exit/0`         - exit out of an IEx session
  * `fw_validate/0`  - marks the current image as valid (check Nerves system if supported)
  * `lsmod/0`        - print out what kernel modules have been loaded
  * `reboot/0`       - reboots gracefully
  * `reboot!/0`      - reboots immediately
  * `uname/0`        - print information about the running system

<!-- README END -->
