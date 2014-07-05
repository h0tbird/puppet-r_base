class r_base::docker inherits from r_base {

  if $ssh {
    class { 'sshd':
      ensure  => $ssh['ensure'],
      enable  => $ssh['enable'],
      version => $ssh['version'],
    }
  }
}
