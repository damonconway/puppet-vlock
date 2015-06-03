# Class: vlock
#
# This module managed the vlock package. Currently, only RedHat family distrobutions are supported.
#
# Parameters:
#   $ensure:
#       String to pass to vlock package resource.
#       Type: String (Default: 'present')
#
#   $pkg_name
#       Name of the package to install
#       Type: String (Default: OS specific package name)
#
# Requires:
#   - puppetlabs-stdlib
#
# Sample Usage:
#
#   - include ::vlock
#
#   - class { 'vlock':
#       ensure = 'latest'
#     }
#
class vlock (
  $ensure   = $::vlock::params::ensure,
  $pkg_name = $::vlock::params::pkg_name,
) {

  validate_string($ensure)
  validate_string($pkg_name)

  package { $pkg_name:
    ensure => $ensure,
  }

}
