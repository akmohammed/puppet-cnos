#
# Copyright (C) 2017 Lenovo, Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#       http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

Puppet::Type.newtype(:cnos_arp_sys) do
  desc ' = {
 	    Manage Arp Sys on Lenovo cnos.

 	    Example:
 	      cnos_arp_sys{"arp_sys":
			    ageout_time => ageout_time
              }
           }'

  # Parameters
  newparam(:title, namevar: true) do
    desc 'name of parameter'
  end

  # Properties
  newproperty(:ageout_time) do
    desc 'integer from 60-28800'

    munge do |value|
      value.to_i
    end

    validate do |value|
      unless value.to_i.between?(60, 28800)
        fail "value not within limit (60-28800)"
      end
    end
  end
end