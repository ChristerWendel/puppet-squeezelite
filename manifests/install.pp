# == Class: squeezelite::install
#
# Installs the squeezelite package
class squeezelite::install {
  package { 'squeezelite':
    ensure => $squeezelite::version,
  }
}
