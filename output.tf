# output "ssh-command" {
#   value = "ssh -i manu.pem ubuntu@${aws_instance.instance-server.public_ip}"

# # }
# output "url1" {
#   value = "http://${aws_instance.instance-server1.public_ip}"

# }

# output "url2" {
#   value = "http://${aws_instance.instance-server2.public_ip}"

# }
# output "url3" {
#   value = "http://${aws_instance.instance-server3.public_ip}"

# }

output "url" {

  value = "http://${aws_lb.load-balancer.dns_name}"

}