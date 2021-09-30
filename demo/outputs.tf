

###output "httpd_public_ip" {
###  description = "List of public IP addresses assigned to the instances"
###  value       = module.ec2_instance.public_ip 
###}
### The Ansible inventory file
resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  server_ip = module.ec2_instance.public_ip
 }
 )
 filename = "inventory"
}
