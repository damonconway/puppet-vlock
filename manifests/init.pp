# Class: vlock
#
# This module managed the vlock package. Currently, only RedHat family distrobutions are supported.
#
# Parameters:
#   $auto_update:
#       Determines if vlock package should be kept up to date.
#       Type: Boolean (Default: false)
#
#   $ensure:
#       Determines if vlock package should be installed.
#       Type: Boolean (Default: true)
#
#   $pkg_name
#       Name of the package to install
#       Type: String (Default: OS default)
#
# Actions:
#   Actions should be described here
#
# Requires:
#   - puppetlabs-stdlib
#
# Sample Usage:
#
#   - include ::vlock
#
#   - class { 'vlock':
#       auto_update = true
#     }
#
class vlock (
  $ensure   = $::vlock::params::ensure,
  $pkg_name = $::vlock::params::pkg_name,
) {

  validate_string($ensure)
  validate_string($pkg_name)

  package { $pkg_name:
    ensure => $ensure_pkg,
  }

}
