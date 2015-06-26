# == Class: squeezelite::configure
#
# Configures the squeezelite daemon
class squeezelite::configure {
  augeas { 'squeezelite.cfg':
    context => '/files/etc/default/squeezelite',
    #changes => "set SB_EXTRA_ARGS '\"-a 80\"'",
    changes => 'set SB_EXTRA_ARGS \'"-a 80"\'',
  }
}
