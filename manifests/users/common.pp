class r_base::users::common inherits r_base {

  if $users {
    class { '::users':
      users => $users,
      stage => pre,
    }
  }
}
