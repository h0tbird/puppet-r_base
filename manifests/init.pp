class r_base (

  $users    = undef,
  $ssh      = undef,
  $terminfo = undef,

) {

  contain "${module_name}::users::${::virtual}"
  contain "${module_name}::ssh::${::virtual}"
  contain "${module_name}::terminfo::${::virtual}"
}
