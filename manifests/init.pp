# == Class: squeezelite
#
# A module to install squeezelite
#
# === Parameters
# ["version"]
#   The package version to install
#
# ["player_name"]
#   How the player should present itself to the server and other clients
#
# ["enable"]
#   Should the service be enabled during boot time?
#
# ["start"]
#   Should the service be started by Puppet

class squeezelite (
  $version = 'present',
  $player_name = false,
  $enable = true,
  $start = true
  )  {
    class{'squeezelite::install': } ->
    class{'squeezelite::configure': } ~>
    class{'squeezelite::service': } ->
    Class['squeezelite']
  }
