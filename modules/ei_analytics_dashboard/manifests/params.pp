# ----------------------------------------------------------------------------
#  Copyright (c) 2018 WSO2, Inc. http://www.wso2.org
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
# ----------------------------------------------------------------------------

# Claas ei_analytics_dashboard::params
# This class includes all the necessary parameters.
class ei_analytics_dashboard::params {
  $user = 'wso2carbon'
  $user_group = 'wso2'
  $product = 'wso2ei'
  $product_version = '6.5.0'
  $profile = 'analytics-dashboard'
  $service_name = "${product}-${profile}"

  # JDK Distributions
  if $::osfamily == 'redhat' {
    $lib_dir = "/usr/lib64/wso2"
  }
  elsif $::osfamily == 'debian' {
    $lib_dir = "/usr/lib/wso2"
  }
  $jdk_name = 'amazon-corretto-8.202.08.2-linux-x64'
  $java_home = "${lib_dir}/${jdk_name}"

  # Define the template
  $start_script_template = 'wso2/analytics/wso2/dashboard/bin/carbon.sh'

  # Directories
  $products_dir = "/usr/local/wso2"

  # Product and installation information
  $product_binary = "${product}-${product_version}.zip"
  $distribution_path = "${products_dir}/${product}/${profile}/${product_version}"
  $install_path = "${distribution_path}/${product}-${product_version}"

  # List of files that must contain agent specific configuraitons
  # if $deployment == "dev" {
  #   $config_file_list = [
  #     { "file" => "${install_path}/file1", "key" => "key1", "value" => "value1" },
  #   ]
  # }
  # elsif $deployment == "staging" {
  #   $config_file_list = [
  #     { "file" => "${install_path}/file1", "key" => "key1", "value" => "value1" },
  #   ]
  # }
  # elsif $deployment == "production" {
  #   $config_file_list = [
  #     { "file" => "${install_path}/file1", "key" => "key1", "value" => "value1" },
  #   ]
  # }
}
