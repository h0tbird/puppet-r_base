class r_base::docker (

  $users     = undef,
  $hosts     = undef,
  $factsdotd = undef,
  $yum       = undef,
  $ntp       = undef,
  $ssh       = undef,

) {

  notify { "Host type: ${virtual}": }
}
