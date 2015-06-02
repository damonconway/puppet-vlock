# puppet-vlock
Pupppet module to manage the vlock package

## Overview

The vlock module simply manages the vlock package. This package is used to lock
terminal sessions. Most commonly it is used to lock tmux sesssions.

Currently only RedHat family distrobutions are supported.

## Setup

### What vlock affects:

* vlock package

### Getting started

Install the vlock package:

```puppet
    class { 'vlock': }
```

## Usage

To make sure the latest vlock package is installed:

```puppet
    class { 'vlock':
      ensure = 'latest',
    }
```

## Options and Defaults

* ensure: 'latest'
* pkg_name
** RedHat: 'vlock'

## Limitations

This module has seen limited testing on:

* RedHat/CentOS 5/6

### Module Dependencies

* puppetlabs/stdlib
