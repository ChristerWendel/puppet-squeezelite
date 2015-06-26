# == Class: squeezelite
#
# A module to install squeezelite
#
# === Parameters
# ["version"]
#   The package version to install
#
# ["enable"]
#   Should the service be enabled during boot time?
#
# ["start"]
#   Should the service be started by Puppet

class squeezelite (
  $version = 'present',
  $enable = true,
  $start = true
  )  {
    class{'squeezelite::install': } ->
    class{'squeezelite::configure': } ~>
    class{'squeezelite::service': } ->
    Class['squeezelite']
  }
