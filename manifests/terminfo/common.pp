class r_base::terminfo::common inherits r_base {

  if $terminfo {
    class { '::terminfo':
      purge  => $terminfo['purge'],
      backup => $terminfo['backup'],
    }
  }
}
