class r_base (

    $users     = undef,
    $hosts     = undef,
    $factsdotd = undef,
    $yum       = undef,
    $ntp       = undef,
    $ssh       = undef,
    $puppet    = undef,

){

    #------------
    # Stage: pre
    #------------

    if $users {
        class { 'users':
            users => $users,
            stage => pre,
        }
    }

    if $hosts {
        class { 'hosts':
            hosts => $hosts,
            stage => pre,
        }
    }

    if $factsdotd {
        class { 'factsdotd':
            hostgroup => $factsdotd['hostgroup'],
            stage     => pre,
        }
    }

    if $yum {
        class { 'yum':
            version           => $yum['version'],
            cachedir          => $yum['cachedir'],
            keepcache         => $yum['keepcache'],
            debuglevel        => $yum['debuglevel'],
            logfile           => $yum['logfile'],
            exactarch         => $yum['exactarch'],
            obsoletes         => $yum['obsoletes'],
            gpgcheck          => $yum['gpgcheck'],
            plugins           => $yum['plugins'],
            installonly_limit => $yum['installonly_limit'],
            bugtracker_url    => $yum['bugtracker_url'],
            distroverpkg      => $yum['distroverpkg'],
            repos             => $yum['repos'],
            stage             => pre,
        }
    }

    #-------------
    # Stage: main
    #-------------

    include motd

    if $ntp {
        class { 'ntp':
            ensure  => $ntp['ensure'],
            version => $ntp['version'],
            servers => $ntp['servers'],
            tickers => $ntp['tickers'],
        }
    }

    if $ssh {
        class { 'ssh':
            ensure                  => $ssh['ensure'],
            version                 => $ssh['version'],
            permit_user_environment => $ssh['permit_user_environment'],
            use_dns                 => $ssh['use_dns'],
        }
    }

    if $puppet {
        class { 'puppet::client':
            ensure  => $puppet['ensure'],
            version => $puppet['version'],
        }
    }
}
