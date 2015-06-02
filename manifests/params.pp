# Class: vlock::params
#
# Default parameters for the vlock module.
#
# Variables:
#   $ensure:
#       Determines if vlock package should be installed.
#       Boolean value (Default: true)
#
#   $pkg_name
#       Name of the package to install
#       Type: String (Default: OS default)
#
# Actions:
#   Actions should be described here
#
# Requires:
#   - Package["foopackage"]
#
# Sample Usage:
#
class vlock::params {
 
  $ensure = 'present'

  case $::osfamily {
    'RedHat': {
      $pkg_name = 'vlock'
    }

    default : {
      fail("vlock: Unsupported osfamily = ${::osfamily}")
    }
  }

}
