output "instance_public_ip" {
  description = "Public IP of EC2 Instance"
  value       = aws_instance.nginx_server.public_ip
}

output "website_url" {
  value = "http://${aws_instance.nginx_server.public_ip}"
}