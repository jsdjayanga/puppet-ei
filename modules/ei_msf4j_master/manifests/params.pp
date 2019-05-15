# ----------------------------------------------------------------------------
#  Copyright (c) 2019 WSO2, Inc. http://www.wso2.org
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

# Claas ei_msf4j_master::params
# This class includes all the necessary parameters.
class ei_msf4j_master::params inherits common::params {
  $user = 'wso2carbon'
  $user_group = 'wso2'
  $product = 'wso2ei'
  $product_version = '6.4.0'
  $profile = 'msf4j'

  # Define the template
  $template_list = [
    'wso2/msf4j/conf/transports/netty-transports.yml',
    'wso2/msf4j/conf/data-bridge/data-agent-config.xml',
  ]

  # ------ Configuration Params ------ #

  # netty-transports.yaml
  $host = '0.0.0.0'

  # data-agent-config.xml
  $thrift_agent_trust_store = 'conf/data-bridge/client-truststore.jks'
  $thrift_agent_trust_store_password = 'wso2carbon'

  $binary_agent_trust_store = 'conf/data-bridge/client-truststore.jks'
  $binary_agent_trust_store_password = 'wso2carbon'

  # Directories
  $products_dir = "/usr/local/wso2"

  # Product and installation paths
  $product_binary = "${product}-${product_version}.zip"
  $distribution_path = "${products_dir}/${product}/${profile}/${product_version}"
  $install_path = "${distribution_path}/${product}-${product_version}"
}
