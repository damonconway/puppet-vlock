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
# Sample Usage:
#
#   - include ::vlock
#
#   - class { 'vlock':
#       auto_update = true
#     }
#
class vlock (
  $auto_update = $::vlock::params::auto_update,
  $ensure      = $::vlock::params::ensure,
  $pkg_name    = $::vlock::params::pkg_name,
) {

  if is_string($auto_update) {
    $auto_update_real = str2bool($auto_update)
  } elsif is_bool($auto_update) {
    $auto_update_real = $auto_update
  } else {
    fail ("vlock: auto_update should be a string or boolean.")
  }

  if is_string($ensure) {
    $ensure_real = str2bool($ensure)
  } elsif is_bool($ensure) {
    $ensure_real = $ensure
  } else {
    fail ("vlock: ensure should be a string or boolean.")
  }

  if $ensure_real {
    if $auto_update_real {
      $ensure_pkg = 'latest'
    } else {
      $ensure_pkg = 'present'
    }
  } else {
    $ensure_pkg = 'absent'
  }

  package { $pkg_name:
    ensure => $ensure_pkg,
  }

}
