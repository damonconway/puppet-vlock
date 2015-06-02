# Class: vlock::params
#
# Default parameters for the vlock module.
#
# Variables:
#   $ensure:
#       String to pass to vlock package resource.
#       Type: String (Default: present)
#
#   $pkg_name
#       Name of the package to install
#       Type: String (Default: OS specific package name)
#
# Actions:
#   Actions should be described here
#
# Requires:
#   - puppetlabs-stdlib
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
