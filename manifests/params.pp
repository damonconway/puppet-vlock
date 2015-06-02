# Class: vlock::params
#
# Default parameters for the vlock module.
#
# Variables:
#   $auto_update:
#       Determines if vlock package should be kept up to date.
#       Boolean value (Default: false)
#
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
 
  $auto_update = false
  $ensure      = true

  case $::osfamily {
    'RedHat': {
      $pkg_name = 'vlock'
    }

    default : {
      fail("vlock: Unsupported osfamily = ${::osfamily}")
    }
  }

}
