# Confluent Terraform demo  
This Script will create the following resource on confluent cloud
- Environment: staging-va
- Kafka cluster :  demo-cluster
- 2 service accounts
    - sa_manager
    - sa_connector
- CLuster Admin RBAC for the Service Account
- ACL for the connectors
- 3 topics
    - clickstream
    - clickstream_codes
    - clickstream_users

- 3 Datagen Sources Connectors 
    - DatagenSourceConnector_clickstream_codes
    - DatagenSourceConnector_clickstream_users
    - DatagenSourceConnector_clickstream

To change the naming of the resource, update the terraform.tfvars file