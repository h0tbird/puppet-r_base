class r_base::ssh::common inherits r_base {

  if $ssh {
    class { '::ssh':
      server_permit_user_environment => $ssh['server_permit_user_environment'],
      server_use_dns                 => $ssh['server_use_dns'],
    }
  }
}
