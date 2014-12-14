class r_base (

  $users    = undef,
  $terminfo = undef,

) {

  contain "${module_name}::users::${::virtual}"
  contain "${module_name}::terminfo::${::virtual}"

  include ::p_ssh
}
