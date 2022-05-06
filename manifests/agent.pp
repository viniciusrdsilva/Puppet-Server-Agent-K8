  define file_line($file, $line) {
    exec {"/bin/echo '${line}' >> '${file}'":
      unless => "/bin/grep -qFx '${line}' '${file}'"
    }
  }

  file_line { 'dnsInsert':
  file => '/etc/hosts',
  line => '192.168.56.10 server'
  }
