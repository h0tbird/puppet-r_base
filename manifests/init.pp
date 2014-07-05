class r_base (

  $users     = undef,
  $hosts     = undef,
  $factsdotd = undef,
  $yum       = undef,
  $ntp       = undef,
  $ssh       = undef,

) {

  if $::is_virtual { notify { "virtual: ${virtual}": } }
  if $::container { notify { "container: ${container}": } }
}
