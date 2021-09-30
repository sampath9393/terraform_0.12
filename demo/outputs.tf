

output "httpd_public_ip" {
  description = "List of public IP addresses assigned to the instances"
  value       = module.ec2_instance.public_ip 
}
