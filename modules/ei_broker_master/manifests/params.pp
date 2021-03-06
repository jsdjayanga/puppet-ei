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

# Claas ei_broker_master::params
# This class includes all the necessary parameters.
class ei_broker_master::params inherits common::params {
  $user = 'wso2carbon'
  $user_group = 'wso2'
  $product = 'wso2ei'
  $product_version = '6.5.0'
  $profile = 'broker'
  $service_name = "${product}-${profile}"

  # Define the template
  $template_list = [
    'wso2/broker/conf/broker.xml',
    'wso2/broker/conf/datasources/master-datasources.xml',
    'wso2/broker/conf/carbon.xml',
    'wso2/broker/conf/axis2/axis2.xml',
    'wso2/broker/conf/user-mgt.xml',
  ]

  # ------ Configuration Params ------ #

  # broker.xml
  $amqp_keystore_location = 'repository/resources/security/wso2carbon.jks'
  $amqp_keystore_password = 'wso2carbon'
  $amqp_keystore_cert_type = 'SunX509'

  $amqp_trust_store_location = 'repository/resources/security/client-truststore.jks'
  $amqp_trust_store_password = 'wso2carbon'
  $amqp_trust_store_cert_type = 'SunX509'

  $mqtt_keystore_location = 'repository/resources/security/wso2carbon.jks'
  $mqtt_keystore_password = 'wso2carbon'
  $mqtt_keystore_cert_type = 'SunX509'

  $mqtt_trust_store_location = 'repository/resources/security/client-truststore.jks'
  $mqtt_trust_store_password = 'wso2carbon'
  $mqtt_trust_store_cert_type = 'SunX509'

  # carbon.xml
  $security_keystore_location = '${carbon.home}/repository/resources/security/wso2carbon.jks'
  $security_keystore_type = 'JKS'
  $security_keystore_password = 'wso2carbon'
  $security_keystore_key_alias = 'wso2carbon'
  $security_keystore_key_password = 'wso2carbon'

  $security_internal_keystore_location = '${carbon.home}/repository/resources/security/wso2carbon.jks'
  $security_internal_keystore_type = 'JKS'
  $security_internal_keystore_password = 'wso2carbon'
  $security_internal_keystore_key_alias = 'wso2carbon'
  $security_internal_keystore_key_password = 'wso2carbon'

  $security_trust_store_location = '${carbon.home}/repository/resources/security/client-truststore.jks'
  $security_trust_store_type = 'JKS'
  $security_trust_store_password = 'wso2carbon'

  $hostname = 'localhost'
  $mgt_hostname = 'localhost'

  # ----- axis2.xml config params -----
  $clustering_enabled = 'false'
  $clustering_membership_scheme = 'multicast'

  # Directories
  $products_dir = "/usr/local/wso2"

  # Product and installation paths
  $product_binary = "${product}-${product_version}.zip"
  $distribution_path = "${products_dir}/${product}/${profile}/${product_version}"
  $install_path = "${distribution_path}/${product}-${product_version}"
}
