class r_base ( $users = undef ) {

  contain "${module_name}::users::${::virtual}"

  include ::terminfo
  include ::p_ssh
}
