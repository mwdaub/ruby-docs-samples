# Copyright 2017 Google, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# [START all]
require "sequel"

DB = Sequel.postgres user:     ENV["POSTGRES_USER"],
                     password: ENV["POSTGRES_PASSWORD"],
                     database: ENV["POSTGRES_DATABASE"],
                     host:     ENV["POSTGRES_SOCKET_PATH"]

DB.create_table :visits do
  primary_key :id
  String      :user_ip
  Time        :timestamp
end
# [END all]
