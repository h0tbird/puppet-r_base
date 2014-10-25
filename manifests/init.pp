class r_base (

  $ssh      = undef,
  $terminfo = undef,

) {

  contain "${module_name}::ssh::${::virtual}"
  contain "${module_name}::terminfo::${::virtual}"
}
