
output "sql_server_public_ip" {
  description = "List of public IP addresses assigned to the instances"
  value       = module.ec2_instance2.public_ip 
}

output "httpd_public_ip" {
  description = "List of public IP addresses assigned to the instances"
  value       = module.ec2_instance.public_ip 
}
