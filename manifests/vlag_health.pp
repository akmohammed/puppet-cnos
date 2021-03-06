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

# This class is used in configurations of VLAG Health Check parameters
#
# This is an example of how to make this configirations
# All attributes are not mandatory for this configurations
# If you change ensure to 'absent', everything will revert to default values
# You can change all the parameters of VLAG configurations using this class
#
# @example Declaring the class
#   include cnos_vlag_hc
#
# @param [String] name The string vlag_health.
# @property [String] status Whether the vLAG is enabled or disabled.
# @property [Integer] keepalive_interval Time interval, in seconds.
# @property [Integer] retry_interval Time interval, in seconds.
# @property [Integer] keepalive_attempts Number of keepalive attempts before declaring peer down.

class cnos::vlag_health {
  cnos_vlag_hc {'vlag_health':
    ensure             => 'absent',
    keepalive_interval => 5,
    retry_interval     => 10,
    keepalive_attempts => 15,
  }
}
