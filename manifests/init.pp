# Public: Install asciio
#
# Usage:
#
#   include asciiio

class asciiio {
  include boxen::config

  file { "${boxen::config::bindir}/asciiio":
    mode   => '0755',
    source => 'https://raw.github.com/sickill/ascii.io-cli/master/bin/asciiio'
  }
}
