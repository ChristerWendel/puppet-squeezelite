# == Class: squeezelite::configure
#
# Configures the squeezelite daemon
class squeezelite::configure {
  augeas { 'squeezelite.cfg':
    context => '/files/etc/default/squeezelite',
    changes => template('squeezelite/squeezelite.erb'),
  }
}
