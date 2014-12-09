class r_base::ssh::common inherits r_base {

  if $ssh {
    class { '::ssh':
      ensure  => $ssh['ensure'],
      version => $ssh['version'],
    }
  }
}
