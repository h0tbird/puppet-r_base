class r_base::docker inherits r_base {

  if $ssh {
    class { '::sshd':
      ensure  => $ssh['ensure'],
      enable  => $ssh['enable'],
      version => $ssh['version'],
    }
  }
}
