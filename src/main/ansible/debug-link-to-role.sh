#!/usr/bin/env bash
#
# Copyright (C) 2016 DANS - Data Archiving and Networked Services (info@dans.knaw.nl)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Creates a symbolic link to the local standard location of the role project.
# Only intended for debugging the role project. Normally, you should use the
# ansible-galaxy installed role from GitHub, which is automatically downloaded
# when doing "vagrant up".

ROLE1=dans.easy-bag-store
ROLE2=dans.easy-includes

rm `dirname $0`/roles/$ROLE1 2> /dev/null
rm `dirname $0`/roles/$ROLE2 2> /dev/null

ln -s ~/git/dtap/roles/$ROLE1 `dirname $0`/roles/$ROLE1
ln -s ~/git/dtap/roles/$ROLE2 `dirname $0`/roles/$ROLE2

