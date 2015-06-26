# == Class: squeezelite::service
#
# Controls the squeezelite service
class squeezelite::service {
  $ensure = $squeezelite::start ? {true => running, default => stopped}

  service { 'squeezelite':
    ensure => $ensure,
    enable => $squeezelite::enable,
  }
}
