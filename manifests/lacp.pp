# Copyright (c) 2017, Lenovo. All rights reserved.
#
# This program and the accompanying materials are licensed and made available
# under the terms and conditions of the 3-clause BSD License that accompanies 
# this distribution. The full text of the license may be found at
#
# https://opensource.org/licenses/BSD-3-Clause
#
# THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS, WITHOUT
# WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.

# This class provides setting of LACP system priority for all interfaces
#
# This is an example of how to make this sys_prio value to set
# If you change ensure to 'absent', it will reset this value to factory default
# The default value is 32768
#
# @example Declaring the class
#   include cnos_lacp
#
# @property [Integer] sys_prio LACP system priority, a positive integer from 1-65535.

class cnos::lacp {
  cnos_lacp {'sys_prio':
    ensure   => 'present',
    sys_prio => '32769',
  }
}
