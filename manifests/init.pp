class rolltool {

  file { "/opt/puppet/libexec/mcollective/mcollective/agent/rolltool.ddl":
      ensure  => $ensure,
      owner   => root,
      group   => root,
      mode    => '0644',
      source  => 'puppet://modules/rolltool/rolltool.ddl',
      notify  => Service['pe-mcollective'],
    } ->

  file { "/opt/puppet/libexec/mcollective/mcollective/agent/rolltool.rb":
      ensure  => $ensure,
      owner   => root,
      group   => root,
      mode    => '0644',
      source  => 'puppet://modules/rolltool/rolltool.rb',
      notify  => Service['pe-mcollective'],
    }

}
