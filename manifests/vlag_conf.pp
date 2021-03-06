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

# This class is used in configurations of VLAG
#
# This is an example of how to make this configirations
# All attributes are not mandatory for this configurations
# If you change ensure to 'absent', everything will revert to default values
# You can change all the parameters of VLAG configurations using this class
#
# @example Declaring the class
#   include cnos_vlag_conf
#
# @param [String] name The string vlag_conf.
# @property [String] status Whether the vLAG is enabled or disabled.
# @property [Integer] tier_id vLAG tier ID value. An intger from 1-512. Default value: 0.
# @property [Integer] priority VLAG priority value, an integer from 0-65535. Default value: 0.
# @property [Integer] auto_recover Time interval, in seconds; an integer from 240-3600. Default 300
# @property [Integer] startup_delay Delay time, in seconds; an integer from 0-3600. Default 120.

class cnos::vlag_conf {
  cnos_vlag_conf{'vlag_conf':
    ensure        => 'present',
    status        => 'enable',
    tier_id       => 10,
    priority      => 33,
    auto_recover  => 313,
    startup_delay => 133,
  }
}
