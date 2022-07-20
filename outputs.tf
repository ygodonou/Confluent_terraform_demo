output "resource-ids" {
  value = <<-EOT
  Environment ID:   ${confluent_environment.environment.id}
  Kafka Cluster ID: ${confluent_kafka_cluster.cluster.id}

  Service Accounts and their Kafka API Keys (API Keys inherit the permissions granted to the owner):
  ${confluent_service_account.sa_manager.display_name}:                     ${confluent_service_account.sa_manager.id}
  ${confluent_service_account.sa_manager.display_name}'s Kafka API Key:     "${confluent_api_key.sa_manager_key.id}"
  ${confluent_service_account.sa_manager.display_name}'s Kafka API Secret:  "${confluent_api_key.sa_manager_key.secret}"
  EOT
  sensitive = true

}

output "resource-topics" {
value = values(confluent_kafka_topic.topics).*.topic_name

}

output "connectors" {
value = <<-EOT
Connectors Name
${confluent_connector.clickstream.config_nonsensitive["name"]}:   ${confluent_connector.clickstream.id}
${confluent_connector.clickstream_users.config_nonsensitive["name"]}:   ${confluent_connector.clickstream_users.id}
${confluent_connector.clickstream_codes.config_nonsensitive["name"]}:   ${confluent_connector.clickstream_codes.id}
EOT

}
output "service_accounts" {
value = <<-EOT
service account Names
${confluent_service_account.sa_manager.display_name} :   ${confluent_service_account.sa_manager.id}
${confluent_service_account.sa_connector.display_name} :   ${confluent_service_account.sa_connector.id}
EOT

}