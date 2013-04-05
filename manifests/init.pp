# Public: Install asciio
#
# Usage:
#
#   include asciiio

class asciiio(
  $url = 'https://raw.github.com/sickill/ascii.io-cli/master/bin/asciiio'
) {
  include boxen::config

  exec { 'install asciiio':
    command => "curl -O ${url} && chmod a+x asciiio",
    creates => "${boxen::config::bindir}/asciiio",
    cwd     => $boxen::config::bindir,
  }
}
